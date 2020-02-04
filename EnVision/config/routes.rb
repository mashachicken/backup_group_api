Rails.application.routes.draw do
  root to: "application#index"
  devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }
  resource :user, only: [:new, :create, :index, :show]
  resources :questions do
    resources :answers
  end
end
