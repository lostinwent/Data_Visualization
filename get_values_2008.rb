require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('values_2008.txt', 'w') do |f|

	page = Nokogiri::HTML(open("http://data.worldbank.org/indicator/EN.ATM.CO2E.KT/countries/1W?display=default"))

	tteight_values = page.css('.views-field-wbapi-data-value-2008')

	tteight_values.each do |tteight|
		tteight = tteight.text.strip
		f.write(tteight + "\n") if !tteight.nil? && tteight != "2008"
	end
end

year
value
year
value
year
value