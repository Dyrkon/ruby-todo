Rails.application.routes.draw do
  root 'application#index'
  get 'default/index'

  # get 'task_lists/index'
  # get 'task_lists/show'
  # get 'task_lists/new'
  # get 'task_lists/edit'
  # get 'task_lists/delete'

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

  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
