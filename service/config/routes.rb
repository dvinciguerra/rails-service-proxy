# frozen_string_literal: true

Rails.application.routes.draw do
  get '/api/v1/tasks', to: 'workflow_service#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
