class Order < ActiveRecord::Base
	has_many :evictions
end
