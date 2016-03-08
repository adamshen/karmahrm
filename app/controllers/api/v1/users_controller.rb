module Api
  module V1
    class UsersController < ApiController
      before_action :doorkeeper_authorize!
      def index
        render json: User.all
      end
    end
  end
end
