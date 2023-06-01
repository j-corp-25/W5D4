class Chirp < ApplicationRecord
  validates :body, presence: true
  validate :body_too_long

  def body_too_long
    if body && body.length > 140
      self.errors.add(:body, "Too long")
    end
  end

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  has_many :likes,
    dependent: :destroy

  has_many :likers,
    through: :likes,
    source: :liker



end
