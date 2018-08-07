Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  devise_for :users

  get 'building/:id/show' => "buildings#show"
  post 'building/:location_id/:building_id' => "buildings#enter" , as: 'location_id'
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#index"


  # resources :users, only: [:show]
  resources :tasks
end
