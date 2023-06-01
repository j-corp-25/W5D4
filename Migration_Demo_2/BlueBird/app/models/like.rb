class Like < ApplicationRecord
  belongs_to :liker,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Chirp,




end
