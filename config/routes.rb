Rails.application.routes.draw do

  get 'account_signup/index'
  post '/sign_up' => 'account_signup#create'
  get '/account_login/index'
  root 'home#index'
  get 'student/index'
  get 'student/show/:id' => 'student#show', as: 'student_show'
  get 'student/new'
  post '/student/create' => 'student#create'
  get '/student/edit/:id' => 'student#edit', as: 'student_edit'
  patch '/student/update/:id' => 'student#update', as: 'student_update'
  delete '/student/destroy/:id' => 'student#destroy'
  resources :articles
end
