class Testbook < ActiveRecord::Base
	has_many :relations
	has_many :testusers

	def check(other_user)

	end


end


