Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  get 'prototypes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
