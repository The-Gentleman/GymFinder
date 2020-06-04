 require_relative 'environment.rb'
 class Gym 
    @@gyms = []
     attr_reader :name, :address, :workout_type, :num_of_stars 

   def initialize(name, address, workout_type, num_of_stars)
        @name = name 
        @address = address
        @num_of_stars = num_of_stars
        @workout_type = workout_type
        @@gyms << self 
    end 

    

    def self.gyms
      @@gyms 
    end 

  end 