require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
doc.css(".heading-financier").text.strip

buttons = doc.css(".btn")
buttons.each do |b|
    puts b.text.strip
end

p doc.css(".heading-fanancier")[0].name
p doc.css(".heading-fanancier")[0].attributes