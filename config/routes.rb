Rails.application.routes.draw do
  resources :observation_disciplinaries
  resources :paiements
  resources :detail_paiement_classrooms
  resources :detail_paiements
  resources :periodes
  resources :promotions
  resources :schedules
  resources :courses
  resources :classrooms
  resources :sections
  resources :students
  resources :accountants
  resources :administrators
  resources :discipline_directors
  resources :parents
  resources :study_directors
  resources :teachers
  resources :personels
  resources :years
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
