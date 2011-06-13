Qrm::Application.routes.draw do
  devise_for :users, :controllers => {:sessions => 'user/sessions', :registrations => 'user/registrations', :passwords => 'user/passwords'}

  match 'home/index' => 'home#index'

  resources :salas do
    member do
      get 'show_open', :as => 'show_open'
      get 'qrm_details', :as => 'qrm_details'
    end
  end
  
  root :to => "home#index"
end
