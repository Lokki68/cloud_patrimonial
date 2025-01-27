Rails.application.routes.draw do
  # Defines the root path route ("/")
  root 'dashboard#index'

  devise_for :users
  get 'dashboard/index'
  get 'up' => 'rails/eachalth#show', as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get 'service-worker' => 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest' => 'rails/pwa#manifest', as: :pwa_manifest

  # Custom routes
  resources :categories
  resources :items
end
