Rails.application.routes.draw do

  devise_for :users, controllers: { :registrations => "users/registrations" }

  resources :type_processes
  resources :prejudicial
  resources :judicial
  resources :fiscal
  resources :tutelage
  resources :administrative

  get 'index/home'
  get 'index/lawyer'
  get 'index/coordinator'
  get 'index/asignator'
  get 'index/administrator'

  get 'lawyer/new'
  get 'lawyer/search'
  get 'lawyer/report'

  get 'coordinator/new'
  get 'coordinator/management'
  get 'coordinator/search'
  get 'coordinator/report'
  get 'coordinator/files'
  get 'coordinator/download_file'
  get "/edit/:id" => "coordinator#edit", as:'coordinator_edit'
  patch "/coordinator/:id(.:format)", :to => 'coordinator#update', :as => 'coordinator_update'
  delete "/coordinator/:id(.:format)", :to => 'coordinator#destroy', :as => 'coordinator_delete'

  get 'asignator/search'
  get 'asignator/asignate'
  post 'asignator/translate', :to => 'asignator#translate', :as => 'asignator_translate'

  get 'administrator/search'
  get 'administrator/report'

  get 'cities/:state', to: 'application#cities'

  root :to => 'index#home'

end
