require_relative "./version.rb"

class Travel::Scraper
  
  def scrape_locations
  doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/travel-guide/a25052734/best-places-to-travel-2019/"))
  
  doc.search("div.article-body-content.standard-body-content").each do |destination|
    
    location = Travel::Location.new
    location.name = destination.search("h2.body-h2").text
    location.subtitle = destination.search("h3.body-h3").text
    location.summary = destination.search("p.body-text").text
    location.booking = destination.search("em").text
     
    location.save
    end 
  end 
end 


