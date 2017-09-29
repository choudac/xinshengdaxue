Rails.application.routes.draw do

  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end

     resources :posts
  end

  namespace :account do
    resources :groups
    resources :posts
  end


    namespace :admin do
      resources :groups
    end

  resources :team
  resources :jsteam
  root 'welcome#index'
end
