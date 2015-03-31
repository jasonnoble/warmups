Rails.application.routes.draw do
  get 'bottles/:number' => 'bottles#bottles', as: 'bottles'
  get 'take/:number' => 'bottles#take', as: 'take'

  root 'bottles#bottles', number: 99
end
