Rails.application.routes.draw do

  root 'student#index'
  get 'student/index'
  get 'student/show/:id' => 'student#show'
  get 'student/new'
  post '/student/create' => 'student#create'
  get 'student/edit'
  get 'student/update'
  get 'student/destroy'


  resources :articles
end
