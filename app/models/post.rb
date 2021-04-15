class Post < ApplicationRecord
  belongs_to :member
  #has_many :post_comments, dependent: :destroy
  #has_many :favorites, dependent: :destroy
  attachment :image
  belongs_to :post
end
