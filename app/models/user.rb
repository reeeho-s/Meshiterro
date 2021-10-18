class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, #パスワードの正確性を検証、ユーザ登録や編集・削除
         :recoverable, :rememberable, :validatable #パスワードをリセット、ログイン情報を保存、emailのフォーマットなどのバリデーション
  
  # UserモデルにPostImageモデルを関連付け(1:N)
  has_many :post_images, dependent: :destroy
  # UserモデルにPostCommentモデルを関連付け（1:N）
  has_many :post_comments, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  attachment :profile_image
  
end