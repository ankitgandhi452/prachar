Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope '/work'do
  	get '/logos' => 'navigation#logos', as: :logos, constraints: { format: 'html' }
    get '/collaterals' => 'navigation#collaterals', as: :collaterals, constraints: { format: 'html' }
    get '/tvcs' => 'navigation#tvcs', as: :tvcs, constraints: { format: 'html' }
    get '/print_ads' => 'navigation#print_ads', as: :print_ads, constraints: { format: 'html' }
  end

  scope '/services' do
  	get '/celebrity_management' => 'navigation#celebrity_management', as: :celebrity_management, constraints: { format: 'html' }
  end

  get '/about_us' => 'navigation#about_us', as: :about, constraints: { format: 'html' }
  get '/contact_us' => 'navigation#contact_us', as: :contact_us, constraints: { format: 'html' }
  get '/career' => 'navigation#career', as: :career, constraints: { format: 'html' }
  post '/job_application' => 'navigation#apply', as: :job_applications, constraints: { format: 'json' }
  post '/contact' => 'navigation#apply', as: :contacteds, constraints: { format: 'json' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'navigation#home'
end
