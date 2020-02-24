# frozen_string_literal: true

ENV['SERVICE_URL'] ||= 'http://127.0.0.1:3002'

class ServiceProxy < Rack::Proxy
  def perform_request(env)
    request = Rack::Request.new(env)

    if request.path =~ %r{^/workflow-service(.*)$}
      backend = URI(ENV['SERVICE_URL'])

      env['HTTP_HOST'] = backend.host
      env['PATH_INFO'] = Regexp.last_match(1) || '/'

      env['HTTP_COOKIE'] = ''
      super(env)
    else
      @app.call(env)
    end
  end
end
