Rails.application.routes.draw do
  root 'screens#screen1'
  get 'screen1', to: 'screens#screen1'
  get 'screen2', to: 'screens#screen2'
end
