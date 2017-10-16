Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :normal_posts, only: :index
      resources :optimized_posts, only: :index
    end
  end
end
