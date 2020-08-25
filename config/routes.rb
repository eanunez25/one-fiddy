Rails.application.routes.draw do
  get 'static_pages/home'
  get 'about', to: 'static_pages#about'
  get 'signup', to: 'users#new'

  resources :results
  resources :users

  root 'static_pages#home'
end