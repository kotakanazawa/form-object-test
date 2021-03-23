Rails.application.routes.draw do
  root "user_registrations#index"
  resources :user_registrations
end
