Rails.application.routes.draw do

	root to: 'welcome#index'

	post '/users', to: 'users#create'

	get '/bootcamps/1', to: 'bootcamps#show'


end
