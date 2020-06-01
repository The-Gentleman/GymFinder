require_relative '../lib/GymFinder/gym'
require 'pry'
$VERBOSE = nil
RSpec.describe GymFinder::Gym do 

     # I want the gym to have a name attribute
     # I want the gym to have a address attribute
     # I want the gym to have a phone number attribute
     # I want the gym to have a review attribute
     describe '@@gyms' do 
        it 'creates a class variable and assigns it a value of an empty array' do 
            expect(GymFinder::Gym.class_variable_get(:@@gyms)).to be_a(Array)
        end 
        
        it 'fails if the length of the array is greater than 1' do 
            expect(GymFinder::Gym.class_variable_get(:@@gyms)).to match_array([])
            #  binding.pry
        end 
    end 

    describe '#initialize' do 
        let (:muscles) {GymFinder::Gym.new("Muscles", "123 Squat St", 1234567890, "Would you like some milk with that whey?")}
        # I want to be able to initialize a gym with a name 
        it 'sets the name with an instance variable @name' do  
            expect(muscles.instance_variable_get(:@name)).to eq("Muscles")
        end 
        # I want to be able to initialize a gym with a address 
        it 'sets the address with an instance variable @address' do 
            expect(muscles.instance_variable_get(:@address)).to eq("123 Squat St")
        end 
        # I want to be able to initialize a gym with a phone number
        it 'sets the phone number with an instance variable @phone_number' do 
            expect(muscles.instance_variable_get(:@phone_number)).to eq(1234567890)
        end 
        # I want to be able to initialize a gym with a review
        it 'sets the review with an instance variable @review' do
            expect(muscles.instance_variable_get(:@review)).to eq("Would you like some milk with that whey?")
        end 
        
        it 'collects all instances of gyms in a class variable' do
            expect(muscles.all.class = Array)
        end 
    end 


 end 

 # rspec spec/gym_creater_spec.rb