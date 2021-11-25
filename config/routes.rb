Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  post 'work_session/:id', to: 'work_sessions#create', as: 'work_sessions'
  resources :tasks, only: [:create, :update, :destroy] do
    resources :timeboxes, only: [:create]
  end
  delete 'timeboxes/:id', to: 'timeboxes#destroy', as: 'timeboxes'
  get 'work_session/:id', to: 'work_sessions#show'
  patch 'work_session/:id', to: 'work_sessions#mark_as_done'
  patch 'task/:id', to: 'tasks#update'
  # resources :timeboxes, only: [:create, :update]
  post 'timeboxes/:id', to: 'timeboxes#start', as: 'timeboxes_start'
  post 'timeboxes/:id', to: 'timeboxes#end', as: 'timeboxes_end'
  get 'statistics', to: 'tasks#stats'
end
