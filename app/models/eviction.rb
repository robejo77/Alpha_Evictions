class Eviction < ActiveRecord::Base
	belongs_to :customer
	belongs_to :properties
	belongs_to :orders

def full_address
    "#{address}, #{zip}"
  end


	geocoded_by :full_address
	after_validation :geocode          # auto-fetch coordinates
end
