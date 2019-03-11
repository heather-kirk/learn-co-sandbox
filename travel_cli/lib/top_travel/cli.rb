class Travel::CLI
  
  def call 
  puts "Ready to book your next vacation?"
  puts "Please choose from the list of following continents to learn more:"
  Travel::Scraper.new.scrape_locations
  list_locations
  menu
  goodbye
  end 
  
  def list_locations
    Travel::Location.all.each_with_index do |location, i|
    puts "#{i +1}. #{location.name}"
   end 
  end 
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter in the corresponding number to learn about your next travel destination:"
    input = gets.strip.downcase
    
    if input.to_i-1 <= Travel::Location.all.size
      location = Travel::Location.all[input.to_i-1]
      
      puts
      puts location.name
      puts 
      puts location.subtitle
      puts
      puts location.summary
      puts location.booking
      
    elsif input == "list"
    list_locations
    elsif input == "exit"
    goodbye
    else 
      puts "What you entered is not valid. Please try again."
    end 
   end 
 end 
 
  def goodbye
    puts "Thanks for choosing this application in order to glean some information about your next trip. Have a wonderful vacation!"
  end 
  
end 