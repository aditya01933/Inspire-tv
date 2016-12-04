Rails.application.routes.draw do
  resources :quotes, only: :index
  root to: 'quotes#index'
end
