Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # create
  get 'tasks/new', to: 'tasks#new', as: 'new'
  post 'tasks', to: 'tasks#create'

  # See details
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'

  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
