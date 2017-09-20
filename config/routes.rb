Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'places#index'
    
    resources :contacts, only: [:new, :create]
    # Other options: :index, :show, :edit, :create, :destroy
    
    resources :places
    
end
