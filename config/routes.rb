MyTasks::Application.routes.draw do
  resources :activities

  resources :priorities

  resources :statuses

  devise_for :users

  root :to => "home#index"
end
