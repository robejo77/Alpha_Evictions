class Customer < ActiveRecord::Base
	has_many :evictions
	has_many :orders
	
	def company_and_id
    "#{company}  #{contact}"
  	end
end
