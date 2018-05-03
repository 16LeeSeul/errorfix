Rails.application.routes.draw do
  get '/' => 'home#index'
  
  get '/home/index'

  post '/home/create' => 'home#create'

  get '/home/new' => 'home#new'
  
  get '/home/destroy/:id' => 'home#destroy'
  
  get '/home/edit/:id' => 'home#edit'
  
  post '/home/update/:id' => 'home#update'
end
