Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "home/about" => "homes#about"
  resources :books
  resources :users,only:[:show, :edit, :update, :index]
  resources :post_images, only: [:new, :create, :index, :show]

end
