Rails.application.routes.draw do  
  get '/contact',  to: 'dashboards#contact'
  get '/help',     to: 'dashboards#help'
  get '/about',    to: 'dashboards#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboards#home"
end
