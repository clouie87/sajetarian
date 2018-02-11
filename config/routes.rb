Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'page_sections/index'
  get 'events/index'
  get 'events/todays_events'

  defaults format: :json do
    resources :events
  end

  root 'page_sections#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
