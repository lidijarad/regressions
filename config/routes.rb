# frozen_string_literal: true

Regressions::Engine.routes.draw do
  get '/:id', to: 'versions#show', as: "version"
  root to: 'versions#index'
end
