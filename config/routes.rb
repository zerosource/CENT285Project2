# config/routes.rb

Project2::Application.routes.draw do

  root :to => "pages#login"
  
  match "pages/login", :via => [:get,:post]
  match "pages/continue" => "pages#continue"

  get "pages/logout"

  get "users/new"
  match "users/create" => "users#create"
  match "users/chooseUser" => "users#chooseUser"
  match "users/edit" => "users#edit", :via => [:get,:post]
  match "users/update" => "users#update"
  match "users/index" => "users#index", :via => [:get,:post]

  match "user_suggestions/index" => "user_suggestions#index", :via => [:get,:post]
  match "user_suggestions/new" => "user_suggestions#new"
  match "user_suggestions/create" => "user_suggestions#create"
  match "user_suggestions/edit" => "user_suggestions#edit"
  match "user_suggestions/update" => "user_suggestions#update"
  match "user_suggestions/chooseSuggestion" => "user_suggestions#chooseSuggestion"

end
