# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  root 'application#index'

  get '/register', to: 'users#new'
  resources :users, only: [:create]

  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  post '/sign_in', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'
  # get '/sign_up', to: 'sessions#sign_up', as: 'sign_up'
  resources :sessions, only: [:create]

  get '/task_lists/:task_list_id/new', to: 'task_lists#add_task', as: 'add_task'
  post '/tasks/:task_list_id', to: 'tasks#create', as: 'create_task'

  resources :task_lists

  resources :tasks
end
