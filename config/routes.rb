Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  get 'homes/index' => 'homes#index', as: 'index'
  resources:books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources:users, only: [:show, :edit, :index, :update]
end
