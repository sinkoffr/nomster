Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'places#index'
    
    resources :contacts, only: [:new, :create]
    # Other options: :index, :show, :edit, :create, :destroy
    
    resources :places do
      resources :comments, only: :create
      
      resources :photos do
        resources :caption, only: :create
      end
    end
    
    resources :users, only: :show
    
end
