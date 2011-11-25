class HomeController < ApplicationController
  def index
    @activity_count = Activity.count(:conditions => ["user_id = ?" , current_user.id])
    
    @activity_hash = Hash.new
    
    @statuses = Status.all
    @statuses.each do |sts|
      @activity_by_status = Activity.find_all_by_status_id(sts.id)
      if @activity_by_status != nil
        @activity_hash[sts.name] = @activity_by_status
      end
    end
    
  end
end
