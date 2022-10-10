Rails.application.routes.draw do
 devise_for :users
 #get '/users/sign_out' => 'devise/sessions#destroy'
 root 'home#index' 

end
