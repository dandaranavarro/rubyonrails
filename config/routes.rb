Rails.application.routes.draw do
 
  resources :fornecedors
  resources :carros
  resources :produtos
  resources :students
  resources :people
  resources :books
  root 'application#hello'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
