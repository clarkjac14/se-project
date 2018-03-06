Rails.application.routes.draw do
  resources :available_locs
  resources :tickets
  get 'view_tickets/view'

  get 'create_ticket/new'

  get 'allusers/new' => 'allusers_new_path'

  get 'allusers' => 'allusers#new'
  
  get '/adminpanel' => 'admin_panel#panel_home'

  get 'allusers/create'

  get 'index'  => 'home#new'
  
  get 'create_ticket' => 'create_ticket#new'
  
  get 'view_tickets' => 'view_tickets#view'

  get 'home/create'

  get '/users/sign_out' => 'destroy_user_session_path'
  devise_for :users do
  get '/users/sign_out' => 'destroy_user_session_path'
  end
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#new"
end
