Rails.application.routes.draw do


  get 'student/index'
  get 'student/show'
  get 'student/new'
  get 'student/create'
  get 'student/edit'
  get 'student/update'
  get 'student/destroy'
  root 'articles#index'
  resources :articles
end
