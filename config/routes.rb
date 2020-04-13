Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions' 
  }
  root to: "posts#index"
  resources :posts, only: [:new]
end
