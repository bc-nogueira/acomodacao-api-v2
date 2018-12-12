Rails.application.routes.draw do
  root to: "acomodacoes#index"

  resources :acomodacoes do
    get :add_images, on: :member
    post :save_images, on: :member
    delete :destroy_image, on: :member
  end

  namespace :api do
    namespace :v1 do
      resources :acomodacoes, only: [:index, :show]
    end
  end
end
