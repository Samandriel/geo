class Condo < ActiveRecord::Base
	geocoded_by :full_address
	after_validation :geocode, if: -> (condo){ condo.full_address.present? and condo.full_address.changed? }

	def full_address
		[address, street, district, city, country].compact.join(', ')
	end	

end
