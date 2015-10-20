Rails.application.routes.draw do
  resources :projxes do
  	resources :bscenes
  end

  devise_for :users

  root "projxes#index"

  resources :messages, only: [:create, :new, :index]

  resources :users

end
