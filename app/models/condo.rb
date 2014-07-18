class Condo < ActiveRecord::Base
	geocoded_by :full_address
	after_validation :geocode, if: -> (condo){ condo.full_address.present? and condo.full_address_changed? }

	def full_address
		[address, street, district, city, country].compact.join(', ')
	end

	def full_address_changed?
		address_changed? || street_changed? || district_changed? || city_changed? || country_changed?
	end	

end
