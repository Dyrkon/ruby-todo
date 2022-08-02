# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#index'
  get 'index', to: 'application#index'

  resources :task_lists do
    member do
      get :delete
    end
  end

  resources :tasks do
    member do
      get :delete
    end
  end
end
