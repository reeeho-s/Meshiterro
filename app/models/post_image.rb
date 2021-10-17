class PostImage < ApplicationRecord
  # PostImageモデルにUserモデルを関連付け(N:1)
  belongs_to :user
  attachment :image
end
