# frozen_string_literal: true

require_relative '../../lib/application/service-proxy.rb'

WA_SERVICE_HOST = ENV['WA_SERVICE_HOST'] || 'http://localhost:3002'
Rails.application.config.middleware.use(ServiceProxy, backend: WA_SERVICE_HOST)
