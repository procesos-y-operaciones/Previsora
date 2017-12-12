Rails.application.routes.draw do

  devise_for :users
  get 'index/home'

  root :to => 'index#home'

end
