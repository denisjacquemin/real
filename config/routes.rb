Pages::Application.routes.draw do
  
  devise_for :users

  namespace :admin do 
    get "themes/index"
    resources :agencies
    resources :items
    resources :categories
    resources :fields
    resources :components, :except  => [:index, :show]
  end
  
  match ':permalink' => 'sites#show'

  root :to => 'sites#show', :permalink => 'home'
end
