Minivertising::Application.routes.draw do
  get "construction/index"
  get 'home', to: 'home#index'
  get 'test', to: 'home#test'
  get 'admin', to: 'admin/dashboard#index'
  
  resources :projects
  devise_for :users
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :projects
  end
  root :to => "construction#index"
end
