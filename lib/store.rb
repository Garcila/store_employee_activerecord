class Store < ActiveRecord::Base

	has_many :employees

	validates :name, presence: true
	validates :name, length: {minimum: 3}
	validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
	
	validate :must_carry_apparel

	def must_carry_apparel
		if mens_apparel.eql? nil
			errors.add(:mens_apparel, "must carry womens or mens apparel")
		end
		if womens_apparel.eql? nil
			errors.add(:womens_apparel, "must carry womens or mens apparel")			
		end
	end
end
