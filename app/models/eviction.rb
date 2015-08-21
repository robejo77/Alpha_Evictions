class Eviction < ActiveRecord::Base
	belongs_to :customer, inverse_of: :customer
	has_many :properties
end
