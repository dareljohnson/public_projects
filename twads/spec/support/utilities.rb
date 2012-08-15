# duplicated method prototypes for helpers that are included in the Rspec testing.

def full_title(page_title)
  base_title = "Tweet My Ads! - A Social Network For Classified Ads"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

