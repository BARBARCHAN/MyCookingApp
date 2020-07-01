Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'users/select' => 'users/registrations#select'
  end

  root "recipes#index"
  resources :recipes, only: [:index, :new, :show]
end
