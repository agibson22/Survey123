Survey123::Application.routes.draw do
  get "password_resets/new"
  
  resources :surveys
  match '/respond', :controller => 'surveys', :action => 'respond'
  
  resources :pabs
  
  resources :users
  match '/create-user', :controller => 'users', :action => 'admin_create_user'
  
  resources :users do
    get :toggle_admin, :on => :member
    get :toggle_researcher, :on => :member
  end
    
  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :password_resets
  
  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/create-user', :to => 'users#create-user'
  match '/my-surveys', :to => 'surveys#my_surveys'
  match '/responses', :to => 'surveys#responses'
  
  root :to => "pages#home"
end
