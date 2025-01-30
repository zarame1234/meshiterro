Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  get 'show/edit'
  resources :postimages, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

end
 