Rails.application.routes.draw do


  #post 'update_records' => 'home#update'
  #get 'home' => 'home#index'
  root 'home#index'
  post 'update' => 'home#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
