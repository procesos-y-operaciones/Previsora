Rails.application.routes.draw do

  get 'fiscal/edit'

  get 'fiscal/new'

  get 'judicial/new'

  get 'judicial/edit'

  resources :type_processes
  resources :prejudicial

  get 'process/prejudicial'

  get 'process/judicial'

  get 'process/fiscal'

  get 'process/administrative'

  get 'process/guardianship'

  devise_for :users
  get 'index/home'

  root :to => 'index#home'

end
