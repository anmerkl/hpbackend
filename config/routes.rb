Rails.application.routes.draw do
  get '/systems/:companyName', to: 'systems#all'
  get '/systems/:companyName/search', to: 'systems#search'
  get '/systems/:companyName/update/:serialNumber', to: 'systems#update'
  post '/users/login', to: 'users#login'
end
