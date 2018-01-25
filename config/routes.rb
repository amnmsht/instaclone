Rails.application.routes.draw do

  root "posts#top"
  resources :posts do
    collection do
      post :confirm
      
  resources :users, only: [:new, :create]
    end
  end
end