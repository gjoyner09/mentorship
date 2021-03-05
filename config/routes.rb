Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#index", as: "home"
  get "/donate", to: "pages#donate", as: "donate"
  get "/mentees", to: "profiles#mentees", as: "mentees"
  get "/details", to: "profiles#details", as: "details"
  post "/donate", to: "pages#submit_donation"
  get "/donate/redirect", to: "pages#redirect", as: "redirect"
end
