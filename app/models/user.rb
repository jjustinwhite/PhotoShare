class User < ActiveRecord::Base
  attr_accessible :email, :password_digest
  has_many :albums, :through => :joins
  has_many :joins
  
  has_secure_password
  validates :email, :password, :presence => true
  validates :email, :uniqueness => true
  attr_accessible :email, :password, :password_confirmation
  
  def name
     first_name + " " + last_name
  end
  
end
