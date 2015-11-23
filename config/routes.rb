Rails.application.routes.draw do
  resources :users
  resources :messageboards
  root 'application#homepage'
  get  '/login', to: 'sessions#new',    as: 'new_login'
  post '/login', to: 'sessions#create', as: 'create_session' #username, pw params passed in
  post '/experiences', to: 'experiences#create', as: 'create_experience' #username, pw params passed in
  resources :experiences
end
