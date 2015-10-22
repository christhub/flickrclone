Rails.application.routes.draw do
  # devise_for :users
  resources :users do
    resources :posts, :except => [:index]
  end

  resources :tags, :except => [:index]
  resources :pictures

  root to: "pictures#index"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

end
