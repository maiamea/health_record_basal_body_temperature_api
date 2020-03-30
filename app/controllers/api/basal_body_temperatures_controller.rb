module Api
  class BasalBodyTemperaturesController < ApplicationController
    def index
      basal_body_temperatures = BasalBodyTemperature.all.order(measured_at: :asc)
      render json: { data: basal_body_temperatures }
    end

    def new
    end

    def create
      basal_body_temperature = BasalBodyTemperature.new(
        measured_value: params[:measured_value],
        measured_at: params[:measured_at],
      )
      if basal_body_temperature.save
        render json: { data: basal_body_temperature }
      else
        render json: { status: "ERROR", data: basal_body_temperature.errors }
      end
    end

    def edit
    end

    def update
      basal_body_temperature = BasalBodyTemperature.find_by(
        id: params[:id],
      )
      basal_body_temperature.measured_value = params[:measured_value]
      basal_body_temperature.measured_at = params[:measured_at]
      basal_body_temperature.save
      render json: basal_body_temperature
    end

    def destroy
      basal_body_temperature = BasalBodyTemperature.find_by(
        id: params[:id],
      )
      basal_body_temperature.destroy
      head :no_content
    end
  end
end
