Minivertising::Application.routes.draw do
  get "project_pictures/create"
  get "project_pictures/update"
  get "construction/index"
  get 'home', to: 'home#index'
  get 'test', to: 'home#test'
  get 'admin', to: 'admin/dashboard#index'
  
  resources :projects do
    member do
      patch 'change', to: :update
      
    end
    collection do
      post 'upload', to: :create
      patch 'image_upload', to: :image_upload
    end
  end
  
  resources :projects do
    resources :project_pictures
  end
  
  devise_for :users
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :projects do
      member do
        patch 'upload', to: :update
      end
    end
  end
  root :to => "construction#index"
end
