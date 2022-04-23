Rails.application.routes.draw do  
  resources :distributors
  resources :books
  resources :cashiers

  get    '/contact',  to: 'dashboards#contact'
  get    '/help',     to: 'dashboards#help'
  get    '/about',    to: 'dashboards#about'
  get    '/signup',   to: 'cashiers#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  
  root "dashboards#home"
end
