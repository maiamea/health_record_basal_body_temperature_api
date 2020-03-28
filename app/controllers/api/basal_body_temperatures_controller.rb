module Api
  class BasalBodyTemperaturesController < ApplicationController
    def index
      basal_body_temperatures = BasalBodyTemperature.all
      render json: { data: basal_body_temperatures }
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end
  end
end
