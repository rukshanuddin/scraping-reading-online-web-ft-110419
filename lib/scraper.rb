require 'nokogiri'
require 'open-uri'
require 'colorize'

html = open("https://www.wikipedia.org/")
doc = Nokogiri::HTML(html)

languages =  doc.css(".central-featured-lang").colorize

languages.each do |lang|
  puts lang.text.strip
end
