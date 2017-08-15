Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, :controllers => { :registrations => "acme/registrations"}
  post 'verifications' => 'verifications#create'
  put 'verifications' => 'verifications#verify'

  root to: "videos#index"
  #resources :videos
  get 'videos/bajaresolucion/:id/', to: 'videos#bajo'
  get 'videos/list', to: 'videos#video_list'
  resources :videos do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
