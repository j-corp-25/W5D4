




class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true

  has_many :chirps,
    primary_keys: :id,
    foreign_key: :author_id,
    class_name: :chirp


  has_many :likes,
    primary_keys: :id,
    foreign_key: :id,
    class_name: :Like,
end
