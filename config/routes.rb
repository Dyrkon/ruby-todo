# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#index'

  get '/task_lists/:task_list_id/new', to: 'task_lists#add_task', as: 'add_task'
  post '/tasks/:task_list_id', to: 'tasks#create', as: 'create_task'

  resources :task_lists

  resources :tasks
end
