class Travel::Location 

  attr_accessor :name, :subtitle, :summary, :booking

  @@all = all 

  def initialize
    @name = name 
    @subtitle = subtitle
    @summary = summary 
    @booking = booking
    @@all << self 
  end 

  def self.all
    @@all 
  end 

  def self.list_destinations 
   self.scrape_deals
  end 
 
  def name 
   @name = doc.search("bb-h2").text
  end 
 
 def subtitle
  @subtitle = doc.search("bb-h3").text
 end
 
 def summary 
  @summary = doc.search ("class.bb-p")
 end
 
 def booking
  @booking = doc.search ("p.bb-strong")
 end 
end 