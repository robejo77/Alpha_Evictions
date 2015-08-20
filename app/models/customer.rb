class Customer < ActiveRecord::Base
	has_many :evictions

	def company_and_id
    "#{company} #{id}"
  	end
end
