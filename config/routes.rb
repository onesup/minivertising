Minivertising::Application.routes.draw do
  get "construction/index"
  get 'home', to: 'home#index'
  resources :projects
  devise_for :users
  root :to => "construction#index"
end
