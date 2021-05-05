Rails.application.routes.draw do
  # User can login
  resources :sessions, only: [:create]
    # Check to see if User is logged in
  delete :logout, to: "sessions#logout"
  # Logs out a User who is logged in
  get :logged_in, to: "sessions#logged_in"
  # User can create an account
  resources :registrations, only: [:create]

  # API for Goals
  resources :goals, only: [:create]

  root to: "static#home"
end
