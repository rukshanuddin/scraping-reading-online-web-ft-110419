require 'nokogiri'
require 'open-uri'
require 'colorize'

html = open("https://www.wikipedia.org/")
doc = Nokogiri::HTML(html)

languages =  doc.css(".central-featured-lang")

languages.each do |lang|
  lang.text.split(/\n/).each do |lang| puts lang.strip end
end
