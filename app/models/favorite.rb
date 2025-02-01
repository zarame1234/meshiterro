class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :postimage

  validates :user_id, uniqueness: {scope: :postimage_id}
end
