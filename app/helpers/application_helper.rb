module ApplicationHelper
  
  def master_class( params )
    "current" if params[:controller].match /^master/
  end
  
  def dashboard_nav( params ) 
    # "layouts/dashboard/master_dashboard_nav" if params[:controller].match /^master/
    "layouts/dashboard/master_dashboard_nav"
  end
  
  def button_for(name, options={})
    return content_tag(:button, content_tag(:span, content_tag(:span, name)), :class => options[:class], :type => options[:button_type])
  end
end
