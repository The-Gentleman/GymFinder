require_relative 'environment.rb'
class Scraper
    
    def self.get_page
         Nokogiri::HTML(open("https://classpass.com/search/brooklyn/fitness-classes/6FFkjtq6yio"))
    end 

    def self.gym_info
        gym_array = []
        $name_array = []
        self.get_page.css("div._1LXXEz4ESHP2tFIArYDEAo").each do |section|
            gym_name = section.css("h2.zeta.text--ellipsis").children.text
            gym_address = section.css("div._3oAhZ5phwNNDu5r1BFcnt1.text--ellipsis").text
            gym_workout_type = section.css("div._30U6zfyhNyRibTpCmWzMDd.text--ellipsis").text.gsub(/...\z/,'')
            gym_rating = section.css("div.ratings.ratings--display._24_UanE3ZZOqnMtqOsSek6").text
            # gym_hash = {}
            # gym_hash[:name] = section.css("h2.zeta.text--ellipsis").children.text
            # $name_array <<  gym_hash[:name] = section.css("h2.zeta.text--ellipsis").children.text 
            # gym_hash[:address] = section.css("div._3oAhZ5phwNNDu5r1BFcnt1.text--ellipsis").text
            # gym_hash[:rating] = section.css("div.ratings.ratings--display._24_UanE3ZZOqnMtqOsSek6").text
            # gym_hash[:workout_type] = section.css("div._30U6zfyhNyRibTpCmWzMDd.text--ellipsis").text.gsub(/...\z/,'')
            # gym_array << gym_hash
            # binding.pry
            Gym.new(gym_name, gym_address, gym_workout_type, gym_rating)
            $name_array << gym_name
        end 
        gym_array
        # binding.pry
    end 
     gym_info
end 
