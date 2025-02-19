Rails.application.routes.draw do
  devise_for :users
  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
  }
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
 
  get 'show/edit'
  resources :postimages, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorite, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  
end
 