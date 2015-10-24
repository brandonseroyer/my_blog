Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts do
    resources :contents

  end
  resources :contents
  namespace :admin do
    resources :users
  end
end
