class Post < ApplicationRecord
  validates :title, presence: true, length: { minimun: 5, maximum: 255 }
  validates :content, presence: true
  belongs_to :user
end
