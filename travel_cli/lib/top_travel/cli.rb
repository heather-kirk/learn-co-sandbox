class Travel::CLI
  
  def call 
  start 
  list_continents
  list_na
  goodbye
  end 
  
  def start 
    puts "Ready to book your next vacation? Please choose from the list of following continents to learn more:"
   @destination = Travel::Location.list_destinations
   @destination.each_with_index(1) do |destination, i|
     puts "#{i}. #{destination.name} - #{destination.subtitle} - #{destination.summary} - #{destination.booking}"
   end 
  end 
  
  def list_continents 
    input = nil
    while input != "exit"
    puts "Enter in the corresponding number to learn about your next travel destination:"
    input = gets.strip.downcase
    
    if input.to_i > 0 
      your_destination = @destination[input.to_i -1]
      puts "#{i}. #{destination.name} - #{destination.subtitle} - #{destination.summary} - #{destination.booking}"
    elsif input == "list"
    start
    else 
      puts "What you entered is not valid. Please try again."
    end 
   end 
 end 
 
 def list_na
   input = nil
    while input != "exit to main menu"
    puts "Here is the list of the top North American destinations in 2019. Enter the appropriate number to learn more:"
    puts  <<-DOC.gsub /^\s*/, ''
    1. Savannah, Georgia
    2. Napa Valley, California
    3. Baltimore, Maryland
    4. Saskatoon, Canada
    DOC
    input = gets.strip.downcase
    case input 
    when "1"
      puts "Info"
    when "2"
      puts "ingo"
    when "3"
      puts "info"
    when "4"
      puts "info"
    when "list"
      list_na
    when "list all others"
      start 
    else 
      puts "What you entered is not valid. Please try again."
      end 
    end 
  end 
    
  def goodbye
    puts "Thanks for choosing this application in order to glean some information about your next trip. Have a wonderful vacation!"
  end 
end 