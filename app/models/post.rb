class Post < ApplicationRecord
  belongs_to :user

  has_many_attached :images

  # activestorage validation that prevents posts without an image from being accepted
  validates :images, presence: true, blob: { content_type: :image }

  # if we delete the post, dependent: :destroy also destroys the associated likes and comments
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user
  has_many :comments, dependent: :destroy

end
