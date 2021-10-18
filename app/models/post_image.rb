class PostImage < ApplicationRecord
  # PostImageモデルにUserモデルを関連付け(N:1)
  belongs_to :user
  attachment :image
  # PostImageモデルにPostCommentモデルを関連付け(1:N)
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :shop_name, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
