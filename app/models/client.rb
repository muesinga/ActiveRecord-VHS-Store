class Client < ActiveRecord::Base
    has_many :rentals
    has_many :vhs, through: :rentals

    # def first_rental(client, movie_title)
    #     new_client = Client.create(client)
    #     Rental.all.select{|rental| rental.client == self}
        
    #     #movie_title = 
    # end

    def return_one(vhs)
        rental = self.rentals.find{|r| r.vhs == vhs}
        rental.update(current: false)
    end

    def return_all
        self.rentals.update_all(current: false)
    end

    def last_return
      self.rentals.update_all(current: false)
      self.destroy
    end

end

