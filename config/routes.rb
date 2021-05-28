Rails.application.routes.draw do
  root to: "gift#index"

  # get 'index/:id/edit', to: 'gift#edit'
  resources :gifts, only: [ :index, :show ]
end
