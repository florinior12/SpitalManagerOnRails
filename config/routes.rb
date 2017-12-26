Rails.application.routes.draw do
 

  root 'static_pages#home'
  get '/consultatii', to:'consults#index'
  get '/medici', to:'medics#index'
  get '/pacienti', to:'pacients#index'


  resources :pacients, :medics, :consults

end
