Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  devise_for :users

  get 'user/:id/show' => "users#show" , as: 'user_show'
  get 'user/:id/edit' => "users#edit" , as: 'user_edit'
  post 'user/:id/update' => "users#update" , as: 'user_update'



  get 'building/:id/show' => "buildings#show"
  post 'building/:location_id/:building_id' => "buildings#enter" , as: 'location_id'
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#index"


  # resources :users, only: [:show]
  resources :tasks
end
