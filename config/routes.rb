Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'flight#index'
	resources :flight, only: [:show]
	resources :booking, only: [:new]
	patch '/booking', to: 'booking#create'
end
