Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  get 'show/edit'
  resources :postimages, only: [:new, :index, :show, :create, :destroy]
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
end
 