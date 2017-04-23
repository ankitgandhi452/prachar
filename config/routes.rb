Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope "/trending" do
  	get '/tvc' => 'navigation#tvc', as: :tvc, constraints: { format: 'html' }  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'navigation#home'
end
