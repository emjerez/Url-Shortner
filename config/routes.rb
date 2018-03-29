Rails.application.routes.draw do
root '/'
  get 'url/new'

  get '/url/create'

  get 'url/fwd'

  get 'url/list'

  get 'urls' => 'url#list'
  post '/url/new' => 'url#create'
  get '/:id' => 'url#fwd'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
