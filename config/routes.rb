Rails.application.routes.draw do
  get 'main/test', to:'main#test'
  get '/', to:"main#first_page"
  post 'main/test'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post 'main/test_re'
  # Defines the root path route ("/")
  # root "articles#index"
end
