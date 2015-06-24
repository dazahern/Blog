Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
  	resources :comments
	end
# This generates the seven RESTful resources
# Get etc

end
