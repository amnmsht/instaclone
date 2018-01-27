Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
    end

  #get 'sessions/new'

  root "posts#top"
  resources :posts do
    collection do
      post :confirm
      
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
    end
  end
end