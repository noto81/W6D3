class Artwork < ApplicationRecord
    validates :artist_id, presence: true, uniqueness: {
        scope: :title,
        message: "One artist cannot have two artworks with same name"
    }

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :artwork_shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artwork_shares,
        source: :viewer

end 