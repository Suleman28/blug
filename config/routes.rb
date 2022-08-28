Rails.application.routes.draw do
  get 'users/new'
  root 'articles#index' #
  resources :articles #, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get 'signup', to: 'users#new'
  # post 'users', to 'users#create'
  resources :users, except: [:new, :create ]
end
