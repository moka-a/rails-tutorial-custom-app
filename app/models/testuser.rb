class Testuser < ActiveRecord::Base
	has_many :relations
	has_many :followed_users

	belongs_to :testbook
end
