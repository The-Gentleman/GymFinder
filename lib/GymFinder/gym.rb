class GymFinder::Gym 
    @@all = []
    attr_accessor :name, :address, :phone_number, :review 

    def initialize(name, address, phone_number, review)
        @name = name 
        @address = address
        @phone_number = phone_number 
        @review = review
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
end 