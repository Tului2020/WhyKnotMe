Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
  # resources :users, defaults: {format: :json}, only: [:create, :show, :update, :index]


  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :update, :index]
    # resource :session, only: [:create, :destroy] 
  end
  namespace :pages do
    match "/examples" => "pages#show" ,:via => [:get]
    match "/phone" => "pages#phone" ,:via => [:get]
    match "/facebook" => "pages#facebook" ,:via => [:get]
  end

end
