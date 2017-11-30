Rails.application.routes.draw do
  resources :comentarios
  resources :people
  devise_for :autors
  get 'articulos/new'

  get 'articulos/index'

  get 'estaticas/home'
  get 'estaticas/index'
  
  get 'home/index'
  root 'home#index'

  resources :articulos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
