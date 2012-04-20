Pages::Application.routes.draw do
  namespace :admin do resources :fields end

  namespace :admin do resources :categories end

  namespace :admin do resources :items end

  namespace :admin do 
    resources :agencies
    resources :pages
  end
  
  match ':permalink' => 'sites#show'

  root :to => 'sites#show', :permalink => 'home'
end
