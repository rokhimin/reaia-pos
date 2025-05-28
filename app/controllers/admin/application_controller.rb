module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user! # atau sesuaikan autentikasi kamu
    before_action :authenticate_admin!

    private

    def authenticate_admin!
      redirect_to root_path unless current_user&.admin?
    end
  end
end
