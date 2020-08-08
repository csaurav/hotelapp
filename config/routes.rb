Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'rooms#index'

  resources :rooms, only: [:index, :show] do
    resources :reservations, only: [:new, :create, :show]

    
  end

  delete '/reservations/:id', to: 'reservations#check_out'

  resources :customers, only: [:edit, :update, :index]

end
