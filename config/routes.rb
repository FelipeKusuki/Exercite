Rails.application.routes.draw do
  get 'pages/treino'
  get 'pages/sobre'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :articles

  root 'pages#home'
end
