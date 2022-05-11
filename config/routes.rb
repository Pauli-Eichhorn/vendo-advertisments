Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :listings do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]

  get "about-us", to: 'pages#aboutus', as: :aboutus
  get "faq", to: 'pages#faq', as: :faq
  get "work", to: 'pages#work', as: :work
  get "contact", to: 'pages#contact', as: :contact

  resources :partners, only: [:index, :new, :create, :destroy]

  patch "accept", to: 'bookings#accept', as: :accept
  patch "reject", to: 'bookings#reject', as: :reject

  resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
end
