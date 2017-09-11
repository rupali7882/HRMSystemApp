class EntitlementsController < ApplicationController
	
  before_action :set_entitilement, only: [:show, :edit, :update, :destroy]

  def index
  	@entitlements = Entitlement.all
  end

  def new
  	@entitlement = Entitlement.new
  end

  def show
  end

  def edit
  end

  def leave
   	@entitlements = Entitlement.all
 	  @leave_request = LeaveRequest.new
  end

  def apply_leave
    lr = current_user.leave_requests.build(leave_request_params)
  	if lr.save
      # Send leave request to hr
      UserMailer.leave_request(current_user,lr).deliver
  	  redirect_to leave_entitlements_path, notice: 'You has send request for leave'
    else
      redirect_to leave_entitlements_path, notice: "Field can not be blank"
    end
  end

  def approve_reject
    @lv =  LeaveRequest.find(params[:id])
    @lv.update_attributes(status: params[:status].to_i)
    send_notification @lv
  end

  def request_leave
     @leave_request = LeaveRequest.all
  end

  def update
     respond_to do |format|
      if @entitlement.update(entitlement_params)
        format.html { redirect_to @entitlement, notice: 'entitlement was successfully updated.' }
        format.json { render :show, status: :ok, location: @entitlement }
      else
        format.html { render :edit }
        format.json { render json: @entitlement.errors, status: :unprocessable_entity }
      end
    end
  end
 

private
    def set_entitilement
    	@entitlement =  Entitlement.find(params[:id])
    end

    def leave_request_params
    	params.require(:leave_request).permit!
    end 

    def entitlement_params 
    	params.require(:entitlement).permit!
    end 

    def send_notification lv
      nn = Notification.create(recipient: lv.user, user: User.first, notifiable: lv.user)
      NotificationRelayJob.perform_later(nn,lv)
    end

end