Rails.application.routes.draw do
  namespace :api do
    resources :messages
  end
end