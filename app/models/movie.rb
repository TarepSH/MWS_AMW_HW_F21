class Movie < ApplicationRecord

has_many :orders
has_many :reviews

    def self.search(search)
        if search 
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end 

end
