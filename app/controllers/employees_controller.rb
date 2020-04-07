class EmployeesController < ApplicationController
    before_action :find_ee, only: [:show, :edit, :update]

   


    def index 
        @employees = Employee.all
    end

    def new 
        @employee = Employee.new
    end

    def create 
        @employee = Employee.create(ee_params)
        if @employee.valid?
            redirect_to @employee
          else 
            flash[:errors] = @employee.errors.full_messages
            redirect_to  new_employee_path
          end 
    end

    def show 
        # @employee = Employee.find(params[:id])
    end

    def edit 
        # @employee = Employee.find(params[:id])
    end

    def update 
        employee = Employee.update(ee_params)
        redirect_to employee_path(employee)
    end

    private
    def ee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :img_url, :dog_id)
    end

    def find_ee
        @employee = Employee.find(params[:id]) 
    end

end

 