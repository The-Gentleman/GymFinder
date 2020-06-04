 require_relative './scraper'
 require_relative './environment'
 
 class Gym 
    @@gyms = []
     attr_reader :name, :address, :workout_type, :num_of_stars 

   def initialize(name, address, workout_type, num_of_stars)
        @name = name 
        @address = address
        @workout_type = workout_type
        @num_of_stars = num_of_stars
        @@gyms << self 
    end     


    def self.gyms
      @@gyms 
    end 
  end 