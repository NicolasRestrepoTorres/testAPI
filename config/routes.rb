Rails.application.routes.draw do
  resources :tasks
  
  
  get 'hacker_spots/index'

  scope :format => true, :constraints => { :format => 'json' } do
    post   "/login"       => "sessions#create"
    delete "/logout"      => "sessions#destroy"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
