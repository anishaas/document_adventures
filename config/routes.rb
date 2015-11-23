Rails.application.routes.draw do

root 'application#homepage'
get  '/login', to: 'sessions#new',    as: 'new_login'
post '/login', to: 'sessions#create', as: 'create_session' #username, pw params passed in

end
