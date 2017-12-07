Rails.application.routes.draw do
  get '/systems/:companyName/search', to: 'systems#search'
  get '/systems/:companyName/filter', to: 'systems#filter'
  get '/systems/:companyName/all', to: 'systems#all'
  get '/systems/:companyName/create/:file', to: 'systems#create'
  get '/systems/:companyName/update/:file', to: 'systems#update'
end
