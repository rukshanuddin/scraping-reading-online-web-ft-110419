require 'nokogiri'
require 'open-uri'
require 'colorize'

html = open("https://www.wikipedia.org/")
doc = Nokogiri::HTML(html)

languages =  doc.css(".central-featured-lang")

puts languages.map do |lang|
  lang.text.split(/\n/)
end
