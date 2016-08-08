require 'open-uri'
require 'nokogiri'

movie = "comedie"

html_file = open("http://www.allocine.fr/recherche/?q=#{movie}")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.totalwidth td.totalwidth a').each do |element|

  puts element.attribute('href')
end


# Dans nokogiri .search = .read
# id="121001" class="anchor" name="121001
