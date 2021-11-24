Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  post 'work_session/:id', to: 'work_sessions#create', as: 'work_sessions'
<<<<<<< HEAD
  resources :tasks, only: [:create, :update, :destroy] do
    resources :timeboxes, only: [:create]
=======
  resources :tasks, only: [:create, :update]
  resources :work_sessions, only: [:show] do
    resources :timeboxes, only: [:create, :update]
>>>>>>> 1ce4c423ea36b77b4a5a0955812d314e871c6075
  end
  delete 'timeboxes/:id', to: 'timeboxes#destroy', as: 'timeboxes'
  get 'work_session/:id', to: 'work_sessions#show'
  patch 'work_session/:id', to: 'work_sessions#mark_as_done'
  patch 'task/:id', to: 'tasks#update'
  # resources :timeboxes, only: [:create, :update]
  patch 'timeboxes/:id', to: 'timeboxes#start'
  patch 'timeboxes/:id', to: 'timeboxes#end'
  get 'statistics', to: 'tasks#stats'
end
