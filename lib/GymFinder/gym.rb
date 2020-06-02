 class GymFinder::Gym 
    @@gyms = []
    # attr_accessor :name , :address, :phone_number, :review 

   def initialize(name, address, phone_number, review)
        @name = name 
        @address = address
        @phone_number = phone_number
        @review = review
        @@gyms << self 
    end 

    # def self.gyms
    #     @@gyms 
    # end 

 end 