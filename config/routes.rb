Rails.application.routes.draw do

  root 'static_pages#index'

  namespace :admin do
    root "categories#index"
    resources :categories
  end
end
