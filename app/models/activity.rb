class Activity < ActiveRecord::Base
  paginates_per 10
  belongs_to :user
  belongs_to :status, :class_name => "Status", :foreign_key => "status_id"
  belongs_to :priority, :class_name => "Priority", :foreign_key => "priority_id"
end
