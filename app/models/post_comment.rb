class PostComment < ApplicationRecord
  # PostCommentモデルとUserモデル(N:1)
  belongs_to :user
  #PostCommentモデルとUserモデル(N:1)
  belongs_to :post_image
end
