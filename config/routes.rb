Rails.application.routes.draw do
  root 'pages#homepage'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'dashboard', to: 'pages#dashboard'

  get 'my_projects', to: 'projects#my_projects'

  get 'my_organizations', to: 'organizations#my_organizations'

  post 'interested', to: 'projects#interest'
  delete 'uninterested', to: 'projects#uninterest'

  resources :users
  resources :projects
  resources :events
  resources :organizations
end
