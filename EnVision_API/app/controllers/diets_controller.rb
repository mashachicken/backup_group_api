class DietsController < ApplicationController

  def index
    @diets = Diet.all
    json_response(@diets)
  end

  def show
    @diet = Diet.find(params[:diet])
    json_response(@diet)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def diet_params
    params.permit(:diet, :enviromental_impact, :nutrition)
  end
end
