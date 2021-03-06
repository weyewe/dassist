class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  
  layout :layout_by_resource

  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      "authentication/signup"
    else
      "application"
    end
  end
  
end
