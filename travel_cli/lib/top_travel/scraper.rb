require_relative "./version.rb"

class Travel::Scraper
  
  def scrape_locations
  doc = Nokogiri::HTML(open("https://www.nomadicmatt.com/travel-blogs/ten-budget-destinations/"))
  
  doc.search("main.content").each do |destination|
    
    location = Travel::Location.new
    location.name = destination.search("h3").children.text.delete(" \t\r\n").split(/[0-9.]/).reject(&:empty?)
    binding.pry
    location.summary = destination.search("p.body-text").text
 
     
    location.save
    end 
  end 
end 


