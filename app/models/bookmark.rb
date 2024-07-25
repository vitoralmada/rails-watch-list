class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie_id, uniqueness: { scope: :list_id, message: "There is already a movie on the list" }
  validates :comment, length: { minimum: 6 }
end
