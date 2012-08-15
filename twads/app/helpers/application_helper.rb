module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
      base_title = "Tweet My Ads! - A Social Network For Classified Ads"
      
     if page_title.empty?
        base_title
     else
        "#{base_title} | #{page_title}"
     end  
     
   end 
   
   def title(page_title = '')
      content_for(:title) { page_title }
   end

end
