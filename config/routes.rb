Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions' 
  }
  root to: "posts#index"
  
  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get 'get_countries', defaults: { format: 'json' }
      get 'get_cities', defaults: { format: 'json' }
    end
    member do
      get 'get_countries', defaults: { format: 'json' }
      get 'get_cities', defaults: { format: 'json' }
    end
  end

  resources :users, only: [:show, :edit, :update] do
    resources :likes, only: :index
    resources :relationships, only: :index
  end

  resources :relationships, only: [:create, :destroy]
  resources :categories, only: :show
  resources :place, only: :show
end
