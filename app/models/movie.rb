class Movie < ActiveRecord::Base
    has_many :movie_genres
    has_many :vhs
    has_many :genres, through: :movie_genres

    def self.available_now
        Vhs.available_now.map(&:movie)
    end


end