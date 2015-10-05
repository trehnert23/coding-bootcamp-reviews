Rails.application.routes.draw do

	root to: 'welcome#index'

	post '/users', to: 'users#create'

	get '/bootcamps/:id', to: 'bootcamps#show'


end
