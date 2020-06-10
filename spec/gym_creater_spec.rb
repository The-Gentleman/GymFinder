require 'pry'
$VERBOSE = nil
RSpec.describe Gym do 
<<<<<<< HEAD
    let (:muscles) {Gym.new("Muscles", "123 Squat St",  4.0)}
=======
    let (:muscles) {Gym.new("Muscles", "123 Squat St",4.0)}
>>>>>>> e99de6798b8f35fc96586ab80c0572fd5f72d238

    describe '@@gyms' do 
        it 'creates a class variable array' do 
            expect(Gym.class_variable_get(:@@gyms)).to be_a(Array)
        end 
         # I want to add every new instance of gym into my class variable upon initialization 
        it 'adds the instance of gym into the class variable upon initialization' do 
            expect(Gym.class_variable_get(:@@gyms)).to match([Gym.new(@name, @address, @num_of_stars)])
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
      # I want the gym to have num_of_stars attribute
     describe "#num_of_stars" do 
        it "has a number of stars" do 
            expect(muscles.num_of_stars).to eq(4.0)
        end
     end
    
end 



 # rspec spec/gym_creater_spec.rb