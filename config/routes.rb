Rails.application.routes.draw do
  resources :messages
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
end
