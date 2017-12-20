Rails.application.routes.draw do

  devise_for :users

  resources :type_processes

  get 'prejudicial/new'
  get 'judicial/new'
  get 'fiscal/new'
  get 'administrative/new'
  get 'tutelage/new'

  get 'index/home'
  get 'index/lawyer'
  get 'index/coordinator'
  get 'index/administrator'

  get 'lawyer/new'
  get 'lawyer/search'
  get 'lawyer/report'

  root :to => 'index#home'

end
