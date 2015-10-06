Rails.application.routes.draw do

	root to: 'welcome#index'

	post '/users', to: 'users#create'
	get '/instructors', to: 'instructors#index'

	get '/bootcamps/1', to: 'bootcamps#show'

	get "/sign_in", to: "sessions#new"
	post "/sessions", to: "sessions#create"

	get "/users/:id", to: "bootcamps#show"





end
