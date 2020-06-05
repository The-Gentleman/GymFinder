require 'pry'
$VERBOSE = nil
RSpec.describe Gym do 
    let (:muscles) {Gym.new("Muscles", "123 Squat St", "HITT", 4.0)}

    describe '@@gyms' do 
        it 'creates a class variable array' do 
            expect(Gym.class_variable_get(:@@gyms)).to be_a(Array)
        end 
         # I want to add every new instance of gym into my class variable upon initialization 
        it 'adds the instance of gym into the class variable upon initialization' do 
            expect(Gym.class_variable_get(:@@gyms)).to match([Gym.new(@name, @address, @workout_type, @num_of_stars)])
        end 
    end 

     describe '#initialize' do 
         # I want to be able to initialize a gym with a name 
         it 'sets the name with an instance variable @name' do  
             expect(muscles.instance_variable_get(:@name)).to eq("Muscles")
         end 
         # I want to be able to initialize a gym with a address 
         it 'sets the address with an instance variable @address' do 
             expect(muscles.instance_variable_get(:@address)).to eq("123 Squat St")
         end 
         it 'sets the workout_type with an instance variable @workout_type' do 
             expect(muscles.instance_variable_get(:@workout_type)).to eq("HITT")
         end 
         # I want to be able to initialize a gym with a num_of_stars
         it 'sets the num_of_stars with an instance variable @num_of_stars' do
             expect(muscles.instance_variable_get(:@num_of_stars)).to eq(4.0)
         end 
     end 
    
     # I want the gym to have a name attribute
     describe "#name" do 
         it "has a name" do 
             expect(muscles.name).to eq("Muscles")
         end
     end
      # I want the gym to have an address attribute
     describe "#address" do 
        it "has an address" do 
            expect(muscles.address).to eq("123 Squat St")
        end
     end
     describe '#workout_type' do
         it "has a workout type" do 
             expect(muscles.workout_type). to eq("HITT")
         end 
     end     
      # I want the gym to have num_of_stars attribute
     describe "#num_of_stars" do 
        it "has a number of stars" do 
            expect(muscles.num_of_stars).to eq(4.0)
        end
     end
    
end 



 # rspec spec/gym_creater_spec.rb