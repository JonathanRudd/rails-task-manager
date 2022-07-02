Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index', as: 'tasks'
  # See details
  get 'tasks/:id', to: 'tasks#show'
  # create
  get 'tasks/new', to: 'tasks#new', as: 'tasks_new'
  post 'tasks/new', to: 'tasks#create'
  # update
  get 'tasks/:id/:edit', to: 'tasks#edit', as: 'tasks_edit'
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
