Rails.application.routes.draw do

  get 'administrative/edit'

  get 'administrative/new'

  resources :type_processes
  resources :prejudicial
  resources :judicial
  resources :fiscal
  resources :administrative

  get 'process/prejudicial'

  get 'process/judicial'

  get 'process/fiscal'

  get 'process/administrative'

  get 'process/guardianship'

  devise_for :users
  get 'index/home'

  root :to => 'index#home'

end
