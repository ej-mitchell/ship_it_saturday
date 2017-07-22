Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics, only: [:index] do
    resources :posts, only: [:index, :new, :create]
  end

  resources :posts, only: [:show] do
    resources :comments, only: [:new, :create]
  end

  root "topics#index"
end
