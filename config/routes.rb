Rails.application.routes.draw do
  resources :screens, only: [:show]
  root 'screens#show', id: 1
end
