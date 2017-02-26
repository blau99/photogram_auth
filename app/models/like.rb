class Like < ApplicationRecord

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"

  validates :user_id, :presence => true, :uniqueness => { :scope => :photo }

  validates :photo_id, :presence => true
end
