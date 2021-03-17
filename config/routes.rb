# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events
  root to: redirect('/events')
end
