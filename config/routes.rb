Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'


  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
  	get 'signup', to: 'devise/registrations#new'
  end

  # resources :accounts
  
  get   'accounts/list'
  get   'accounts/new'
  post  'accounts/create'
  patch 'accounts/update'
  get   'accounts/list'
  get   'accounts/show'
  get   'accounts/edit'
  get   'accounts/delete'
  get   'accounts/update'
  get   'accounts/show_users'

end
