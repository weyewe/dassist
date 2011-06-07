class WelcomeController < ApplicationController
  def index 
    @projects = Project.find( :all , :order => 'position ASC')
  end
end
