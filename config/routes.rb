Rails.application.routes.draw do

  resources :type_processes
  resources :prejudicial
  resources :judicial

  get 'process/prejudicial'

  get 'process/judicial'

  get 'process/fiscal'

  get 'process/administrative'

  get 'process/guardianship'

  devise_for :users
  get 'index/home'

  root :to => 'index#home'

end
