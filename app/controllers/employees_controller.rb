class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :update, :edit]
  
  
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.create(employee_params)
    redirect_to employee_path(employee.id)
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee.id)
  end

  def destroy
  end

  def find_employee
    @employee = Employee.find(params[:id])  
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

end
