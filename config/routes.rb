Pages::Application.routes.draw do

  devise_for :users

  namespace :admin do 
    get "themes/index"
    resources :agencies
    resources :items
    resources :categories
    resources :fields
    resources :templates, :except  => [:index, :show]
    resources :pages, :except => [:index, :show]
  end
  
  match ':permalink' => 'sites#show'

  root :to => 'sites#show', :permalink => 'home'
end
