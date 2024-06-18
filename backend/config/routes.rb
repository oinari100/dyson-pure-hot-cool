Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      post 'power/on', to: 'dyson#power_on'
      post 'power/off', to: 'dyson#power_off'
      post 'air/volume', to: 'dyson#air_volume'
      post 'cold/on', to: 'dyson#cold_on'
      post 'hot/on', to: 'dyson#hot_on'
      post 'hot/volume', to: 'dyson#hot_volume'
      post 'swing/on', to: 'dyson#swing_on'
      post 'swing/off', to: 'dyson#swing_off'
      post 'auto/on', to: 'dyson#auto_on'
      post 'auto/off', to: 'dyson#auto_off'
    end
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
