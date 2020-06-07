require_relative './gym'
class CLI
    def greeting
        puts "Welcome to GymFinder!"
        gym_menu
    end  

    def gym_menu
        prompt = TTY::Prompt.new
        user_input = prompt.select("Please select a gym:", Gym.display_gym_names)
        binding.pry
    end 
end 