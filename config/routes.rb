Rails.application.routes.draw do

  resources :type_processes
  resources :prejudicial
  resources :judicial
  resources :fiscal
  resources :administrative
  resources :tutelage

  devise_for :users

  get 'index/home'
  get 'index/lawyer'
  get 'index/coordinator'
  get 'index/administrator'

  root :to => 'index#home'

end
