Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/museums', to: 'museums#index'
  get '/artists/:id', to: 'artists#show'
end
