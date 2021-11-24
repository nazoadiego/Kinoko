Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  post 'work_session/:id', to: 'work_sessions#create', as: 'work_sessions'
  resources :tasks, only: [:create, :update] do
    resources :timeboxes, only: [:create]
  end
  get 'work_session/:id', to: 'work_sessions#show'
  patch 'work_session/:id', to: 'work_sessions#mark_as_done'
  patch 'task/:id', to: 'tasks#update'
  patch 'timeboxes/:id', to: 'timeboxes#start'
  patch 'timeboxes/:id', to: 'timeboxes#end'
  patch 'timeboxes/:id', to: 'timeboxes#update'
  get 'statistics', to: 'tasks#stats'
end
