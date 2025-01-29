Rails.application.routes.draw do
  resources :postimages, only: [:new, :index, :show, :create]
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
end
 