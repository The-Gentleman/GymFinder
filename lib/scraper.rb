require_relative 'environment.rb'
class Scraper
    
    def self.get_page
         Nokogiri::HTML(open("https://classpass.com/search/brooklyn/fitness-classes/6FFkjtq6yio"))
    end 

    def self.gym_name
        gym_name_array = []
        name = self.get_page.css("div._3MJBIMPm13FBYtABhvSxRC")
        name_iterator = name.css("h2.zeta.text--ellipsis").each do |title|
            gym_name_array << title.children.text
        end     
        binding.pry

    end 
    gym_name




end 
