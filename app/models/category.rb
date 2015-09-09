class Category < ActiveRecord::Base
	has_many :products

	def category_name
    "#{name}"
  	end
end
