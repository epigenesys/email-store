module EmailStore
  class EmailsController < ApplicationController
    before_action :find_email, only: [:show, :remove]
    helper Rails.application.routes.url_helpers
    
    def index
      @emails = EmailStore::Email.paginate(page: params[:page], per_page: 30).order(:created_at)
    end

    def show
    end

    def remove
      @email.destroy
      redirect_to emails_path(page: params[:page])
    end

    private

      def find_email
        @email = EmailStore::Email.find(params[:id])
      end

  end
end
