Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "webrts#index"

  get '/profile/:username', to: 'webrts#profile', as: 'profile'
  get '/profile', to: 'webrts#profile'
  post '/getmapdata', to: 'maps#getMapData'
  get '/town/:id', to: 'towns#town', as: 'town'
  post '/town/build', to: 'towns#build'
  post '/town/move', to: 'towns#move'
  get '/town/gettowns/:user_id', to: 'towns#getTowns'
  get 'buildhandler', to: 'towns#buildhandler'
  get 'movehandler', to: 'towns#movehandler'
end
