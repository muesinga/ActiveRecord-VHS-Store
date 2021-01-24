class Client < ActiveRecord::Base
    has_many :rentals
    has_many :vhs, through: :rentals

    def first_rental(client, movie_title)
        new_client = Client.create(client)
        Rental.all.select{|rental| rental.client == self}
        
        movie_title = 

    end


    
end

