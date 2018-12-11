Rails.application.routes.draw do
  root to: "acomodacoes#index"

  resources :acomodacoes

  # namespace :api do
  #   namespace :v1 do
  #     resources :acomodacoes
  #   end
  # end
end
