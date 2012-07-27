module ApplicationHelper

#Display user email  
  def display_email(user_id)
    user = User.find(user_id)
    if user then user.email else "Unknown" end
  end
  
  
end
