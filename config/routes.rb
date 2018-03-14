Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'events/index'
  get 'events/todays_events'
  get 'download_menu' => "page_sections#download_menu"


  defaults format: :json do
    resources :events
  end

  resources :form_submissions, only: :create

  root 'page_sections#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
