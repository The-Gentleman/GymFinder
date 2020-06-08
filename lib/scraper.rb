class Scraper
    def self.get_page
        Nokogiri::HTML(open("https://classpass.com/search/brooklyn/fitness-classes/6FFkjtq6yio"))
    end 

    def self.gym_info
        self.get_page.css("div._1LXXEz4ESHP2tFIArYDEAo").map do |section|
            gym_name = section.css("h2.zeta.text--ellipsis").children.text
            gym_address = section.css("div._3oAhZ5phwNNDu5r1BFcnt1.text--ellipsis").text
            gym_workout_type = section.css("div._30U6zfyhNyRibTpCmWzMDd.text--ellipsis").text.gsub(/...\z/,'')
            stars = section.css("div.ratings.ratings--display._24_UanE3ZZOqnMtqOsSek6").text.split(/[()]/)
            gym_num_of_stars = "#{stars[1]} people rated this gym #{stars[0]} stars!"
            Gym.new(gym_name, gym_address, gym_workout_type, gym_num_of_stars)
        end 
    end 
end 
