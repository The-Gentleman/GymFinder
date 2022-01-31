class Scraper
    def self.gym_info
        doc = Nokogiri::HTML(URI.open("https://classpass.com/search/brooklyn/fitness-classes/6FFkjtq6yio"))
        
        doc.css("div._1LXXEz4ESHP2tFIArYDEAo").map do |section|
            gym_address = section.css("div._3oAhZ5phwNNDu5r1BFcnt1.text--ellipsis").text
            gym_name = section.css("h2.zeta.text--ellipsis").children.text
            stars = section.css("div.ratings.ratings--display._24_UanE3ZZOqnMtqOsSek6").text.split(/[()]/)
            gym_num_of_stars = "#{stars[1]} people rated this gym #{stars[0]} stars!"
            Gym.new(gym_name, gym_address, gym_num_of_stars)
            cookies = "They are delicious"
        end 
        
    end 
end

