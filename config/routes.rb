Rails.application.routes.draw do

  devise_for :users

  resources :type_processes
  resources :prejudicial
  resources :judicial
  resources :fiscal
  resources :tutelage
  resources :administrative

  get 'index/home'
  get 'index/lawyer'
  get 'index/coordinator'
  get 'index/administrator'

  get 'lawyer/new'
  get 'lawyer/search'
  get 'lawyer/report'

  root :to => 'index#home'

end
