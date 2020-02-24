# frozen_string_literal: true

class WorkflowServiceController < ApplicationController
  def index
    render json: {
      message: 'Hello from service'
    }
  end
end
