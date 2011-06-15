class MessagesController < ApplicationController
  def new
  end
  
  def create 
    @project = Project.find_by_id( params[:project_id])
    @message = @project.messages.new( params[:message] )
    @message.user = current_user
    @message.save
    
    
    respond_to do |format|
      format.html { render :action => "edit" }
      format.xml  { render :xml => @message.errors, :status => :unprocessable_entity }
      format.js {   }
    end
  end
end
