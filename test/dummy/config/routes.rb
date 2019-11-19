Rails.application.routes.draw do
  mount EmailStore::Engine => "/email_store"
end
