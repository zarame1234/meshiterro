class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :postimage

  validates :user_id, unqueness: {scope: :postimage_id}
end
