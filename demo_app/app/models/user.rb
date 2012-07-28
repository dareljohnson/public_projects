class User < ActiveRecord::Base
  attr_accessible :email, :name
  # Relationships
  has_many :micropostls
  
end
