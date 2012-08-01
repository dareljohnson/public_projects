class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  # Relationships
  belongs_to :user
  
  # validation on length of characters
  # this filed will accept.
  # Maximum length is 140 characters
  validates :content, :length => { :maximum => 140 }
end
