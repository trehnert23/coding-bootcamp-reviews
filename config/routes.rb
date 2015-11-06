Rails.application.routes.draw do

 	root to: 'welcome#index'

	post '/users', to: 'users#create'

	get '/instructors', to: 'instructors#index'

	get '/bootcamps/:id', to: 'bootcamps#show', as: "bootcamps"

	get '/bootcamps/:id/review', to: 'reviews#new'

	post '/reviews', to: 'reviews#create'

	get  '/reviews', to: 'reviews#show'

	get "/sign_in", to: "sessions#new"

	post "/sessions", to: "sessions#create"

	delete '/sessions', to: 'sessions#destroy'

	get "/users/:id", to: "users#show"

	get "/bootcamp_reviews/:id/edit", to: "bootcamp_reviews#edit", as: "bootcamp_review"

	patch "/bootcamp_reviews/:id/edit", to: "bootcamp_reviews#update"

	get '/bootcamp_reviews/:id', to: "bootcamp_reviews#index"

	get '/bootcamp_review/:id', to: "bootcamp_reviews#show"

end
