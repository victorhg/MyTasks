module ApplicationHelper
  
  def show_date_time(date)
    if date
      date.strftime("%b, %d %Y - %H:%M")
    else
       '-' 
    end
  end
  
  def show_activity_count(quantity)
    if quantity == 0
      'You don\'t have any activity'
    elsif quantity == 1
      'You have one activity'
    else
      'You have ' + quantity.to_s + ' activities'
    end
  end
  
end
