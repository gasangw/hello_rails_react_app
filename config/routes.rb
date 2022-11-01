Rails.application.routes.draw do
  get 'root/indexrails'
  get 'root/g'
  get 'root/controller'
  get 'root/Root'
  get 'root/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "root#index"

  namespace :api do
    namespace :v1 do
      resources :messages, only: [:index]
    end
  end
end
