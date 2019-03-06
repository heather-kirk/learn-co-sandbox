class Travel::Scraper
  
  def self.scrape
  doc = Nokogiri::HTML(open(https://www.cntraveller.com/gallery/top-holiday-destinations-2019)).new
  end 
end 