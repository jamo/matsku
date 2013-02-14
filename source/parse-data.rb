require 'nokogiri'
require 'open-uri'

filu = open("https://www.cs.helsinki.fi/group/java/k13/ohpe/materiaali.html")

doc = Nokogiri::HTML(filu)


doc.css('section').each do |sec|
  f = File.new("_viikko#{sec[:id].to_s}.html.erb", "w")
  f.write sec.to_html
  f.close
end

