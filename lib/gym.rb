require_relative './scraper'
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
    # I want to display gym names
    def self.display_gym_names
      Scraper.gym_info.map{|gym|gym.name}
    end 

    # I want those  names to display the scraped data

    def self.gyms
      @@gyms 
    end 
end 