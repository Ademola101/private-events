Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :attendance do
    end
  end
  get '/user', to: 'users#show'
  put '/event/:id/attendance', to: 'events#attendance', as: 'attendance'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
end
