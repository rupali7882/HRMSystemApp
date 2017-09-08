class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super do
      resource.add_role params[:role]
      if resource.has_role? "Employee"
        emp = resource.build_employee(employee_params)
        emp.save
      end
      resource.save
    end
  end
  # add custom create logic here

  def update
    super
  end
  private

  def sign_up_params
    params.require(:user).permit!
  end

  def account_update_params
    params.require(:user).permit!
  end

  def employee_params
    params.require(:employee).permit!
  end

  protected

   def update_resource(resource, params)
    resource.update_without_password(params)
  end
end 
