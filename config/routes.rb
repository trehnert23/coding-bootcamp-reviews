Rails.application.routes.draw do
	
 	root to: 'welcome#index'

	post '/users', to: 'users#create'

	get '/bootcamps/1', to: 'bootcamps#show'

	get '/bootcamps/:id/review', to: 'review#new'

end
