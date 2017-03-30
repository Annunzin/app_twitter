class User < ApplicationRecord
  has_many :twaats

  validates :username, length: { minimum:4, maximum:16 }, uniqueness:true, presence:true
  validates :img_url, presence:true
end
