Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'walts/land' => 'walts#land'
  get 'walts/sea' => 'walts#sea'
  get 'walts/top' => 'walts#top'
  get 'walts/index'  => 'walts#index'
  get 'walts/new'  => 'walts#new'
  post 'walts/new'  => 'walts#create'
  
  resources :walts
  root 'walts#top'

  
  
end
