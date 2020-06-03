 require_relative 'environment.rb'
 class Gym 
    @@gyms = []
     attr_reader :name, :address, :num_of_stars 

   def initialize(name, address, num_of_stars)
        @name = name 
        @address = address
        @num_of_stars = num_of_stars
        @@gyms << self 
    end 

    def self.gyms
      @@gyms 
    end 
    puts 'Uhhhhh.....'
  end 