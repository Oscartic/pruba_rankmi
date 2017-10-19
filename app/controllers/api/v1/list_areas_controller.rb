class Api::V1::ListAreasController < ApplicationController
  def index
    # @areas = Area.where("leadership_id IS ?", nil)
    @areas = Area.all
    render :json => @areas
  end
end
