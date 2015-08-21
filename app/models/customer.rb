class Customer < ActiveRecord::Base
	has_many :evictions, inverse_of: :eviction
	def company_and_id
    "#{company} #{id}"
  	end
end
