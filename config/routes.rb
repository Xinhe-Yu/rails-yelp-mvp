Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[create destroy]
  end
  resources :reviews, only: %i[new]
end
