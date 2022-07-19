# frozen_string_literal: true

Rails.application.routes.draw do
  root 'task#index'
  get 'task/index'
  get 'task/tasks_overview'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
