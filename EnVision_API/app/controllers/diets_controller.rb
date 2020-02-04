class DietsController < ApplicationController

  def index
    @diets = Diet.all
    json_response(@diets)
  end

  def show
    @diet = Diet.find(params[:diet])
    json_response(@diet)
  end

  def get_by_name
    @diets = Diet.all
    @diets.each do |diet|
      if diet.diet_type == params[:diet_type]
        @diet = diet
      end
    end
    if (@diet)
      json_response(@diet)
    else
      json_response(nil, 404)
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def diet_params
    params.permit(:diet, :environmental_impact, :nutrition)
  end
end
