class MessagesController < ApplicationController
  def new
  end
  
  def create 
    @project = Project.find_by_id( params[:project_id])
    @message = @project.messages.new( params[:message] )
    @message.save
    render :nothing
    # @message.user_id = current_user.id
    # if @message.save
    #   render :json
    # else
    # end
  end
end
