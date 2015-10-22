Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users
  # resources :users do
  #
  # end
  resources :posts, :except => [:index]
  resources :tags, :except => [:index]
  resources :pictures

  root to: "pictures#index"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

end
