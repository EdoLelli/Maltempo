class Post < ActiveRecord::Base
  attr_accessible :email, :password, :email_confirmation
  belongs_to :user
  
  validates :email, :password, :email_confirmation, presence: true
  
  validates :email, confirmation: true, uniqueness: true
  
  validates :password, :length=> {
    
    minimum: 5,
    maximum: 10,
    
    too_short: "Password had to be minimum %{count} characters",
    too_long: "Password had to be maximum %{count} characters"
  }
end
