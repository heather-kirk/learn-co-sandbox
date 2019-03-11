class Travel::Scraper
  
  def scrape_locations
  @doc = Nokogiri::HTML(open("https://www.cntraveller.com/gallery/top-holiday-destinations-2019"))
  @doc.search("figcaption").each do |destination|
    location = Travel::Location.new
    
     location.name = destination.search("h2.bb-h2").text.split.each{|l| l.capitalize!}.join(" ")
     location.subtitle = destination.search("h3.bb-h3").text
     location.summary = destination.search("p.bb-p").text
     location.booking = destination.search("strong.bb-strong").text
     
     location.save
    end 
  end 
end 