class Relation < ActiveRecord::Base
	belongs_to :follower, class_name: "Testuser"
	belongs_to :followed, class_name: "Testbook"
end
