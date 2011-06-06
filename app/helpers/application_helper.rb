module ApplicationHelper
  
  def master_class( params )
    "current" if params[:controller].match /^master/
  end
  
  def dashboard_nav( params ) 
    # "layouts/dashboard/master_dashboard_nav" if params[:controller].match /^master/
    "layouts/dashboard/master_dashboard_nav"
  end
end
