Rails.application.routes.draw do
  root 'skys#ask'

  get 'get', to: 'skys#get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
