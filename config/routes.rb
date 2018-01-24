Rails.application.routes.draw do

  root "posts#top"
  resources :posts do
    collection do
      post :confirm
    end
  end
end