Rails.application.routes.draw do
  resources :users do
    resources :posts, :except => [:index]
  end

  resources :tags, :except => [:index]
  resources :photos
  
  root to: "photos#index"
end
