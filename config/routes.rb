Rails.application.routes.draw do
  resources :poots
  get '/' => 'memos#index'
  get '/new' => 'memos#new'
  post '/create' => 'memos#create'
  get '/memos/:id/edit' => 'memos#edit'
  patch '/memos/:id/' => 'memos#update'
  delete '/memos/:id/' => "memos#destroy"
  get 'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#store'
  get 'tasks/:id' => 'tasks#show'
  put 'tasks/:id' => 'tasks#update'
  delete 'tasks/:id' => 'tasks#destroy'
  get '/posts' => 'posts#show'
  post '/posts/create' => 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
