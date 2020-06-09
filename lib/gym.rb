class Gym 
  @@gyms = []
   attr_reader :name, :address, :workout_type, :num_of_stars 
   def initialize(name, address, num_of_stars)
      @name = name 
      @address = address
      @num_of_stars = num_of_stars
      @@gyms << self 
  end  

  def self.gyms
    @@gyms 
  end 

  # I want to display gym names
  def self.display_gym_names
    Scraper.gym_info.map{|gym|gym.name}
  end 

end 