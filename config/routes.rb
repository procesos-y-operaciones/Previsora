Rails.application.routes.draw do

  resources :sinisters
  resources :attornies

  devise_for :users, controllers: { :registrations => "users/registrations" }

  resources :type_processes
  resources :prejudicial
  resources :judicial
  resources :fiscal
  resources :tutelage
  resources :administrative

  get 'type_processes/capture/:id(.:format)', :to => 'type_processes#capture', :as => 'type_processes_capture'
  get 'type_processes/capture_edit/:id(.:format)', :to => 'type_processes#capture_edit', :as => 'type_processes_capture_edit'

  get 'index/home'
  get 'index/lawyer'
  get 'index/coordinator'
  get 'index/asignator'
  get 'index/administrator'

  get 'lawyer/new'
  get 'lawyer/search'
  get 'lawyer/report'
  get 'lawyer/capture'

  get 'coordinator/new'
  get 'coordinator/management'
  get 'coordinator/search'
  get 'coordinator/report'
  get 'coordinator/files'
  get 'coordinator/capture'
  get 'coordinator/lists'
  get 'coordinator/download_file'
  get "/edit/:id" => "coordinator#edit", as:'coordinator_edit'
  patch "/coordinator/:id(.:format)", :to => 'coordinator#update', :as => 'coordinator_update'
  delete "/coordinator/:id(.:format)", :to => 'coordinator#destroy', :as => 'coordinator_delete'

  get 'asignator/search'
  get 'asignator/asignate'
  get 'asignator/report'
  post 'asignator/translate', :to => 'asignator#translate', :as => 'asignator_translate'

  get 'administrator/search'
  get 'administrator/report'

  get 'cities/:state', to: 'application#cities'

  root :to => 'index#home'

end
