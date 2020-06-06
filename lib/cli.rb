class CLI
    def greeting
        puts "Welcome to GymFinder!"
        gym_menu
    end  

    def gym_menu
        prompt = TTY::Prompt.new
        user_input = prompt.select("Please select a gym:", $name_array)
        puts user_input
    end 

end 