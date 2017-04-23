Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope '/work'do
  	get '/tvcs' => 'navigation#tvcs', as: :tvcs, constraints: { format: 'html' }
  	get '/logos' => 'navigation#logos', as: :logos, constraints: { format: 'html' }
  end
  get '/about_us' => 'navigation#about_us', as: :about, constraints: { format: 'html' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'navigation#home'
end
