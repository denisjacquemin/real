Pages::Application.routes.draw do
  
  devise_for :users

  namespace :admin do 
    resources :agencies
    resources :items
    resources :categories
    resources :fields
    resources :templates, :except  => [:index]
    resources :pages
  end
  
  match ':permalink' => 'sites#show'

  root :to => 'sites#show', :permalink => 'home'
end
