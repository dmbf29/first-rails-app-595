Rails.application.routes.draw do
  # HTTP_VERB '/path', to: 'controller#action', as: :prefix
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
  post '/contact', to: 'pages#create'
  get '/rooms/:id', to: 'rooms#show', as: :room
  # https://www.airbnb.com/rooms/49613866
  # params[:id]
end
