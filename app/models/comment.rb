class Comment < ApplicationRecord
    validates_presence_of :user_name, :body
    belongs_to :idea
    mount_uploader :picture, PictureUploader
    belongs_to :user
end
