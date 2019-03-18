require_relative "./version.rb"

class HP::Scraper
  
  def scrape_books
  doc = Nokogiri::HTML(open("https://harrypotter.bloomsbury.com/uk/bookshop/illustrated-editions/harry-potter-illustrated-editions/"))
  
  doc.search("div.row").each do |book|
    
    new_book = HP::Book.new
    new_book.title = book.search("h2.HP-Product").text.delete("\r\n").strip
    new_book.author = book.search("p.author").text.delete("\r\n").strip
    new_book.details = book.search("div.prod-details").text.delete("\r\n").strip
    new_book.save
    binding.pry
    end 
  end 
end 


