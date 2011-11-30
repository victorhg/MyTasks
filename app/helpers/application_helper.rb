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
      'You don\'t have any activity !'
    elsif quantity == 1
      'You have one activity !'
    else
      'You have ' + quantity.to_s + ' activities !'
    end
  end
  
  def show_activities_end_today_count(quantity)
    if quantity == 0
      'You don\'t have any activity ending today !'
    elsif quantity == 1
      'You have one activity ending today !'
    else
      'You have ' + quantity.to_s + ' activities ending today!'
    end
  end
  
  def show_late_activities(quantity)
    if quantity == 0
      'You don\'t have any late activity !'
    elsif quantity == 1
      'You have one late activity !'
    else
      'You have ' + quantity.to_s + ' late activities !'
    end
  end
  
end
