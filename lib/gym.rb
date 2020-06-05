 class Gym 
    @@gyms = []
     attr_reader :name, :address, :workout_type, :num_of_stars 
    # binding.pry
     def initialize(name, address, workout_type, num_of_stars)
        @name = name 
        @address = address
        @workout_type = workout_type
        @num_of_stars = num_of_stars
        @@gyms << self 
    end     
    # WHAT I WANT THIS CLASS TO DO: 
    # -DISPLAY GYM INFORMATION FOR CLI CLASS.
    #  -USE GYM.NEW
    
    def self.gyms
      @@gyms 
    end 
  end 