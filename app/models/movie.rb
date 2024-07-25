class Movie < ApplicationRecord
    # validates :title, :overview, presence:true
    # validates :title, uniqueness:true
    # validates :overview, uniqueness:true


    has_many :bookmarks

    validates :title, presence: true, uniqueness: true
    validates :overview, presence: true
end
