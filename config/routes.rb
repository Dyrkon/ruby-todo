# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tasks#index'
  get 'tasks', to: 'tasks#index'
  get 'tasks/overview'
end
