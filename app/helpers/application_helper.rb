module ApplicationHelper
  
  def bootstrap_class_for flash_type
    { success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning", 
      notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def set_profile_pic u
  	return u.pic.blank? ? "profile.png" : u.pic.url
  end

end
