Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  get 'pages/info'
  root 'ideas#index'
  resources :ideas, only: [:show, :index]
  resource :user, only: [:edit, :update]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
