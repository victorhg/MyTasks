class HomeController < ApplicationController
  def index
    @appConfig_finalized = Appconfig.find_by_description("STATUS_FINALIZED")
    
    if @appConfig_finalized
      @activity_count = Activity.count(:conditions => ["user_id = ? and status_id <> ?" , current_user.id, @appConfig_finalized.value.to_i])
    else
      @activity_count = Activity.count(:conditions => ["user_id = ?" , current_user.id])
    end
      
    @activity_hash = Hash.new
    
    @statuses = Status.all
    @statuses.each do |sts|
      if sts.id != @appConfig_finalized.value.to_i
        @activity_by_status = Activity.find_all_by_user_id_and_status_id(current_user.id, sts.id)
        if @activity_by_status.size > 0
          @activity_hash[sts.name] = @activity_by_status
        end
      end
    end
    
    if @appConfig_finalized
      @activities_end_today = Activity.find(:all, :conditions => ["user_id = ? and status_id <> ? and enddate between ? and ?", current_user.id, @appConfig_finalized.value.to_i, DateTime.now.beginning_of_day, DateTime.now.end_of_day])
    else
      @activities_end_today = Activity.find(:all, :conditions => ["user_id = ? and enddate between ? and ?", current_user.id, DateTime.now.beginning_of_day, DateTime.now.end_of_day])
    end
    
    if @appConfig_finalized
      @activities_late = Activity.find(:all, :conditions => ["user_id = ? and status_id <> ? and enddate < ?", current_user.id, @appConfig_finalized.value, Time.now])
    else
      @activities_late = Activity.find(:all, :conditions => ["user_id = ? and enddate < ?", current_user.id, Time.now])
    end
    
  end
end
