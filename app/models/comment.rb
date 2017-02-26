class Comment < ApplicationRecord


  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  validates :photo_id, :presence => true
  validates :user_id, :presence => true
  validates :body, :presence => true
end
