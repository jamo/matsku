require 'nokogiri'
require 'open-uri'
def pull
  filu = open("https://www.cs.helsinki.fi/group/java/k13/ohpe/materiaali.html")
  doc = Nokogiri::HTML(filu)

  doc.css('section').each do |sec|
    f = File.new("source/_viikko#{sec[:id].to_s}.html.erb", "w")
    f.write sec.to_html
    f.close
  end
end


desc "pulls and publishes new ohpe matsku"
task :publish do
  pull
  sh "middleman build"
end


desc "pulls and publishes new ohpe matsku"
task :laitos do
  pull
  sh "middleman build"
  sh "chmod -R g+rws . 2>/dev/null"
  sh "chmod -R a+rX . 2>/dev/null"
end