Rails.application.routes.draw do
  get '/', to: 'product#index'
  get 'products/:id', to: 'product#detail'

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show, :create] do
        post 'review', to: 'product_reviews#create'
      end
    end
  end
end
