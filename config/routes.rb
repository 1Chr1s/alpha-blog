Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #creates the route to 'pages/homepage' page
  #get 'pages/homepage', to: 'pages#homepage'
  root 'pages#homepage'

  #created the route to 'pages/about' page
  #get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'
end
