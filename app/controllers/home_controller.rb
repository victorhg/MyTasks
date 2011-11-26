class HomeController < ApplicationController
  def index
    @activity_count = Activity.count(:conditions => ["user_id = ?" , current_user.id])
    
    @activity_hash = Hash.new
    
    @statuses = Status.all
    @statuses.each do |sts|
      @activity_by_status = Activity.find_all_by_user_id_and_status_id(current_user.id, sts.id)
      if @activity_by_status.size > 0
        @activity_hash[sts.name] = @activity_by_status
      end
    end
    
    @activities_end_today = Activity.find(:all, :conditions => ["user_id = ? and enddate between ? and ?", current_user.id, DateTime.now.beginning_of_day, DateTime.now.end_of_day])
    
  end
end
