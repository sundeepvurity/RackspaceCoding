Rails.application.routes.draw do

  resources :appointments
  resources :receptionists
  resources :customers
  resources :doctors
  root 'welcome#index'

end
