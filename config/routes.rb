Pages::Application.routes.draw do
  namespace :admin do 
    resources :agencies 
  end

  resources :pages
  
  match ':permalink' => 'pages#show'

  root :to => 'pages#show', :permalink => 'home'
end
