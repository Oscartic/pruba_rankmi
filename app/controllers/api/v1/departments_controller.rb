class Api::V1::DepartmentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_department, only: [:show, :update, :destroy]
  before_action :recalculator, only: :update
  after_action :recalculator, only: :create
  def index
    render :json => @departments = Department.all
  end
  def show
    if @department
      render json: @department
    else
      render json: {error: 'Departamento no encontrado'}, status: :not_found
    end
    @department = Department.new
  end
  def create
    @department = Department.new(department_params)
    if @department.save
      render json: @department, status: :created
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end
  def update
    if @department.update(department_params)
      render json: @department, status: :ok
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @department.destroy
    render json: {result: 'Departamento eliminado correctamente', status: :no_content}
  end

  private
  def set_department
    @department = Department.find_by_id(params[:id])
  end

  def department_params
    params.require(:department).permit(:name, :score, :area_id)
  end

  def recalculator
    @departments = Department.where(area_id: department_params[:area_id]).sum(:score)
    @amount_dep = Department.where(area_id: department_params[:area_id]).count
    @area = Area.find_by_id(department_params[:area_id])
    @area.update(:score => (@departments / @amount_dep))
  end
end
