Rails.application.routes.draw do
  get 'user/:id' => 'application#show'
  get '/new_user' => 'application#new_user'
  get '/create_user' => 'application#create'
  get '/user/:id/edit' => 'application#edit'
  get '/update_user/:id' => 'application#update'
  get '/user/:id/destroy' => 'application#destroy'
  end
