Rails.application.routes.draw do
  devise_for :users

  # Pages
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'statistics', to: 'tasks#stats'
  get 'help', to: 'pages#help'
  get 'login', to: 'pages#login'
  get 'mushroom_forest', to:'pages#mushroom_forest', as: :mushroom_forest

  # Tasks
  resources :tasks, only: [:create, :update, :destroy] do
    resources :timeboxes, only: [:create]
  end
  patch 'task/:id', to: 'tasks#update'

  # Work Sessions
  resources :work_sessions, only: [:show] do
    patch '/task/:id', to: 'tasks#mark_as_done'
  end

  # Timeboxes
  delete 'timeboxes/:id', to: 'timeboxes#destroy', as: 'timeboxes'
  post 'timeboxes/:id', to: 'timeboxes#start', as: 'timeboxes_start'
  post 'timeboxes/:id', to: 'timeboxes#end', as: 'timeboxes_end'
end
