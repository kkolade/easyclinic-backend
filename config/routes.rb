Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     post 'sessions' => 'sessions#create'
      
  #     resources :users, only: [] do
  #       resources :reservations, only: [:index, :create, :update, :destroy]
  #     end
      
  #     resources :doctors, only: [:index, :show]
  #     resources :clinics, only: [:index, :show]
  #     resources :specialties, only: [:index, :create, :destroy]
  #     resources :reservations, only: [:index, :show, :create, :update, :destroy]
  #   end
  # end
  
  # devise_for :users, controllers: { passwords: 'devise/passwords' }
  # root "users#index"
  
  resources :users, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:index, :show, :new, :create, :update, :destroy]
  end
  
  resources :doctors, only: [:index, :show, :new, :create, :destroy, :update]
  
  resources :specialties
  
  resources :clinics

end