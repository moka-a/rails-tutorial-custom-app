class Painting < ActiveRecord::Base
    attr_accessible :user_id, :userid, :image
    belongs_to :user
    mount_uploader :image, ImageUploader
end