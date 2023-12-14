class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # user id unique under post id scope
  validates :user_id, uniqueness: { scope: :post_id }
end
