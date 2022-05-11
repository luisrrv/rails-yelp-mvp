Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do # /rest, /rest/:id, /rest/new
    resources :reviews, only: [:new, :create] # /rest/:id/reviews, /rest/:id/reviews/new
  end
end
