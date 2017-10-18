class Api::V1::ListAreasController < ApplicationController
  def index
    @areas = Area.where("leadership_id IS ?", nil)
    # @areas = Area.includes(:children)
    render :json => @areas.to_json(:include, :children)
  end
end
