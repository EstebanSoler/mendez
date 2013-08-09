Mendezcollado::Application.routes.draw do

  root to: "home#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :home, only: [:index]
  resources :career_articles, only: [:index, :show]
  resources :staffs, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :type_of_services, only: [:show]do
    resources :services, only: [:show]
  end
  resources :history, only: [:index]
  resources :resolucion_1504003, only: [:index]
  resources :machines, only: [:show]
  resources :residents, only: [:index]
  resources :articles, only: [:show]
  resources :slide_infos, only: [:show]
  resources :welcomes, only: [:show]
  resources :preparations, only: [:show]


  get "who_we_are/index"
  get "contact/index"
  get "history/in_memoriam"
  get "home/certificacion_iso"
  get "home/pre_inscripciones"
  get "home/links"
  get "career_articles/preinscripcion_carrera"

  get "/services/type_of_services/:id", 
    to: 'type_of_services#show', as: 'services_types'
  get "/services/type_of_services/:service_id", 
    to: 'services#show', as: 'services_show'
  get "quienes-somos", 
    to: 'who_we_are#index', as: 'quienes_somos'
  get "empresa", 
    to: 'home#index', as: 'empresa'
  get "empresa/certificacion_iso", 
    to: 'home#certificacion_iso', as: 'certificacion_iso'
  get "empresa/pre_inscripciones", 
    to: 'home#pre_inscripciones', as: 'pre_inscripciones'
  get "Carrera/preinscripcion_carrera", 
    to: 'career_articles#preinscripcion_carrera', as: 'career_preinscription'
end
