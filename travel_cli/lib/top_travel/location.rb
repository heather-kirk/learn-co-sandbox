require 'pry'

class Travel::Location 

  attr_accessor :name, :subtitle, :summary, :booking

  @@all = []

  def initialize
    @name = name 
    @subtitle = subtitle
    @summary = summary 
    @booking = booking
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 

end 