Rails.application.routes.draw do
  namespace :user do
    resources :personal_informations
  end
  resources :blogs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
