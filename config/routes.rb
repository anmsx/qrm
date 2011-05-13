Qrm::Application.routes.draw do
  devise_for :users, :controllers => {:sessions => 'user/sessions', :registrations => 'user/registrations', :passwords => 'user/passwords'}

  match 'home/index' => 'home#index'

  resources :salas
  root :to => "home#index"
end
