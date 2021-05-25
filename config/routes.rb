Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
  # resources :users, defaults: {format: :json}, only: [:create, :show, :update, :index]


  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :update, :index]
    # resource :session, only: [:create, :destroy] 
  end
end
