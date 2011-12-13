class AdminController < ApplicationController
  
  def index
    config = Appconfig.find_by_description("ADMIN_USER")
    
    if config.value != current_user.usertype_id
      redirect_to root_path, notice: 'You do not have admin access.'
    end  
  end

end
