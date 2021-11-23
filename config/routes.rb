Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'tasks#index'
  post 'dashboard', to: 'work_sessions#create'
  resources :tasks, only: [:create] do
    resources :timeboxes, only: [:create]
  end
  get 'work_session/:id', to: 'work_sessions#show'
  patch 'work_session/:id', to: 'work_sessions#mark_as_done'
  patch 'timeboxes/:id', to: 'timeboxes#start'
  patch 'timeboxes/:id', to: 'timeboxes#end'
  patch 'timeboxes/:id', to: 'timeboxes#update'
  get 'statistics', to: 'tasks#stats'
end
