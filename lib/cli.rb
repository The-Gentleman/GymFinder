require_relative './gym'
class CLI
    def greeting
        puts "Welcome to GymFinder!"
        gym_menu
    end  

    def gym_menu
        prompt = TTY::Prompt.new
        user_input = prompt.select("Please select a gym to view its address, type of workout, and rating.", Gym.display_gym_names, cycle: true)
        Gym.gyms.select do |gym_obj|
            if user_input == gym_obj.name 
                puts "This gym is located at #{gym_obj.address}"
                puts "The workout style is #{gym_obj.workout_type}."
                puts gym_obj.num_of_stars
                break 
            end 
        end 
        more_gyms_or_exit
    end

    def more_gyms_or_exit
        prompt = TTY::Prompt.new
        choices = ["view more gyms", "exit"]
        user_choice = prompt.select("Would you like to view more gyms or exit?", choices)
        if user_choice == "view more gyms"
            gym_menu
        elsif user_choice == "exit"
            puts "Thanks for using GymFinder!"
        end 
    end 

end 