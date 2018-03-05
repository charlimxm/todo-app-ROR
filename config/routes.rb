Rails.application.routes.draw do
  resources :tasks do
  	member do
  		patch :complete
  	end
  end

  root 'tasks#index'

  get "tasks/:id/edit" => "tasks#edit"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
