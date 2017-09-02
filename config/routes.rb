# frozen_string_literal: true
Rails.application.routes.draw do
  resources :backgrounds
  resources :saved_characters
  resources :family_names
  resources :given_names
  resources :favorites
  resources :adjectives,  only: [:index, :show]
  resources :nouns, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
