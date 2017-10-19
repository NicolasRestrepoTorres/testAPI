Rails.application.routes.draw do
  resources :tasks

  #scope :format => true, :constraints => { :format => 'json' } do
    post   "/login"       => "sessions#create"
    delete "/logout"      => "sessions#destroy"
  #end
  resources :user_rspecs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
