class ApplicationController < ActionController::API
    def status
        render json: { data: 'ok' }
      end
end
