MyTasks::Application.routes.draw do
  resources :user_types

  resources :projects

  match '/appconfigs/about/' => 'appconfigs#about'
  
  resources :appconfigs

  resources :activities

  resources :priorities

  resources :statuses

  devise_for :users

  root :to => "home#index"
end
