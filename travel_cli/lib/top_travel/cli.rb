
class Travel::CLI
  
  def call 
  list_continents
  list_countries
  goodbye
  end 
  
  def list_continents
    puts "Ready to book your next vacation? Please choose from the list of following continents to learn more:"
    puts  <<-DOC.gsub /^\s*/, ''
    1. North America
    2. South America 
    3. Europe
    4. Asia
    5. Africa
    6. Australia 
    7. Anarctica 
    DOC
  end 
  
  def list_countries 
    input = nil
    while input != "exit"
    puts "Italy"
    input = gets.strip.downcase
    case input 
    when "1"
      puts "More info on deal 1.."
    when "2"
      puts "More info on deal 2.."
    when "list"
      list_continents
    else 
      puts "What you entered is not valid. Please try again."
    end 
   end 
 end 
 
  def goodbye
    puts "Thanks for choosing this application in order to glean some information about your next trip. Have a wonderful vacation!"
  end 
end 