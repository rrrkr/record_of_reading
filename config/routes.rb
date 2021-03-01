Rails.application.routes.draw do
  get 'users/show'
  root "static_pages#home"
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'signup' => 'devise/registrations#new', as: :new_user_registration
    post 'signup' => 'devise/registrations#create', as: :user_registration
    get 'signup/cancel' => 'devise/registrations#cancel', as: :cancel_user_registration
    get 'user' => 'devise/registrations#edit', as: :edit_user_registration
    patch 'user' => 'devise/registrations#update', as: nil
    put 'user' => 'devise/registrations#update', as: :update_user_registration
    delete 'user' => 'devise/registrations#destroy', as: :destroy_user_registration
    get 'password' => 'devise/passwords#new', as: :new_user_password
    post 'password' => 'devise/passwords#create', as: :user_password
    get 'password/edit' => 'devise/passwords#edit', as: :edit_user_password
    patch 'password' => 'devise/passwords#update'
    put 'password' => 'devise/passwords#update', as: :update_user_password
  end
  resource :users
  get '/:name' => 'users#show'
  #get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
