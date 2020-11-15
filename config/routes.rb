Rails.application.routes.draw do
  devise_for :users
  #resources :comments
  root :to => 'blogs#index'
  resources :comments
  resources :blogs do
    resources :comments
  end

  #resources :users do
    #collection do
    #  get 'login'
     # post 'do_login'
    #get 'logout'
    #end
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
