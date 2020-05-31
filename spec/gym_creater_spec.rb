require_relative '../lib/GymFinder/gym'
 
RSpec.describe GymFinder::Gym do 
    describe '#initialize' do 
        # I want to be able to initialize a gym 
        it 'initializes the gym with a name, address, phone number, and a review' do 
            muscles = GymFinder::Gym.new("Muscles", "123 squat st", "123-456-7890", "Would you like some milk in your whey?") 
        end 
    end 
     # I want the gym to have a name attribute
     # I want the gym to have a address attribute
     # I want the gym to have a phone number attribute
     # I want the gym to have a review attribute
    
 end 

 # rspec spec/gym_creater_spec.rb