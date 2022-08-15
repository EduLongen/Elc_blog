class Post < ApplicationRecord
  extend FriendlyId
  validates :title, presence: true, length: { minimun: 5, maximum: 255 }
  validates :content, presence: true

  belongs_to :user

  has_rich_text :content
  has_many :comments, dependent: :destroy

  friendly_id :title, use: %i[slugged history finders]

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end

end
