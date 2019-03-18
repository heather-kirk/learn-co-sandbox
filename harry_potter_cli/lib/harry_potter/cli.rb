class HP::CLI
  
  def call 
  puts "Welcome to the wizarding world of Bloomsbury!"
  puts "Here, you check out our exclusive Harry Potter illustrated books."
  puts "Each one was beautifully illustrated and you won't be disappointed."
  HP::Scraper.new.scrape_books
  list_books
  menu
  goodbye
  end 
  
  def list_books
    HP::Book.all.each_with_index do |title, i|
     
    puts "#{i +1}. #{new_book.title}"
   end 
  end 
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter in the corresponding number to learn more details about the selected book."
    puts "Type list to return back to the list or exit when you are satisfied!"
    input = gets.strip.downcase
    
    if input.to_i-1 <= HP::Book.all.size
      new_book = HP::Book.all[input.to_i-1]
      
      puts
      puts new_book.title
      puts 
      puts new_book.author
      puts
      puts new_book.details
      
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
    puts "Thanks for choosing this application in order to choose your next HP adventure!"
  end 
  
end 