class Genre < ActiveRecord::Base
    has_many :movie_genre
    has_many :movies, through: :genres

end