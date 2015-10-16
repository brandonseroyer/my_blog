Rails.application.routes.draw do

  resources :posts do
    resources :contents, except: [:index]

  end
end
