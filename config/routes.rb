Rails.application.routes.draw do
  resources :images, only: [:new, :create, :show]
  root "images#new"
end
