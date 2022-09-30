# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: 'lends#index'

  devise_for :users, skip: [:registrations]

  devise_scope :user do
    resource :registration, as: :user_registration, only: [:new], path: '/users',
                            path_names: { new: 'sign_up' }, controller: 'devise/registrations' do
      post :sign_up, action: :create, as: ''
    end

    authenticated :user do
      root 'books#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :lends
  resources :books
  resources :users
end
