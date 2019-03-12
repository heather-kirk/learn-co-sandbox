require_relative "./version.rb"

class Travel::Scraper
  
  def scrape_locations
  doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/top-holiday-destinations-2019"))
  div_titles = doc.css("div.c-figure__title").text.split.each{|l| l.capitalize!}
  h2_titles = doc.css("h2.bb-h2").text.split.each{|l| l.capitalize!}
  titles = div_titles + h2_titles 
  binding.pry
  doc.search("figcaption").each do |destination|
    location = Travel::Location.new
    
    
  
     location.subtitle = destination.search("h3.bb-h3").text
     location.summary = destination.search("p.bb-p").text
     location.booking = destination.search("strong.bb-strong").text
     
     location.save
    end 
  end 
end 


