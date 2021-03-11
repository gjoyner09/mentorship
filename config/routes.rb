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
  post "/message_create", to: "profiles#message_create", as: "message_create"
  get "/messages", to: "profiles#messages", as: "messages"
  get "/matches", to: "profiles#matches", as: "matches"
  post "/requests", to: "profiles#requests", as: "requests"
  post "/match_create", to: "profiles#match_create", as: "match_create"
  post "/match_destroy", to: "profiles#match_destroy", as: "match_destroy"
end
