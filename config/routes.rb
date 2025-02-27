Rails.application.routes.draw do
  get 'screens/show'

  # Exemple d'URL pour chaque télé : /screens/1 et /screens/2
  resources :screens, only: [:show]
end
