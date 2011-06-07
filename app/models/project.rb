class Project < ActiveRecord::Base
  acts_as_list default_scope => 'position'
  belongs_to :user
  has_many :messages
  def self.upgrade_position( position_array )
    for id in position_array
      project = Project.find_by_id( id.to_i ) 
      project.position = position_array.index( project.id.to_s ) + 1
      project.save
    end
  end
end
