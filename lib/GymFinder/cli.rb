class GymFinder::CLI
    
    def greeting
        puts "Hi!"
        gym_menu
    end  

    def gym_menu
        prompt = TTY::Prompt.new
        puts "Please select a gym:"
        user_input = prompt.select("Please select a gym:", ["Blink", "Harbor Fitness"])
        puts user_input
    end 

end 