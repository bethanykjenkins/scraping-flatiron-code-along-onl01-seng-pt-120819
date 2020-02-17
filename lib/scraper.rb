require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("https://www.zillow.com/homes/Manhattan-New-York-NY_rb/"))
    address = html.search("h3.list-card-addr").text.strip
    binding.pry
  end 
  
end

Scraper.new.get_page

