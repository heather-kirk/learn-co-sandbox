require 'pry'

class Travel::Location 

  attr_accessor :name, :summary

  @@all = []

  def initialize
    @name = name 
    
    @summary = summary 
    
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 

end 