class Chef < ActiveRecord::Base 
	before_save { self.email = email.downcase}
 	validates :chefname, presence: true, length:{ minimun:3, maximum: 40 }
 	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
 	validates :email, presence: true, length: { maximum: 105 },
 										uniqueness: { case_sensitive: false }, 
 										format: { with: VALID_EMAIL_REGEX }
end 