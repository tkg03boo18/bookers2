Rails.application.routes.draw do

  root to: 'home#top'

  devise_for :users

  get 'home/about' => 'home#about', as:'about'
  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy]

  resources :users, only: [:show, :index, :edit, :update]
end
