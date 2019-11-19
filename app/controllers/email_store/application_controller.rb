module EmailStore
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    layout 'email_store/application'
  end
end
