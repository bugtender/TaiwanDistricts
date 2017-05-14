require_dependency "taiwan_districts/application_controller"

module TaiwanDistricts
  class DataController < ApplicationController
    def show
      data = TaiwanDistricts.list(params[:lang], params[:id])
      render json: data, layout: nil
    end

    def index
    end
  end
end
