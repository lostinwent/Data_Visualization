require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('values_2009.txt', 'w') do |f|

	page = Nokogiri::HTML(open("http://data.worldbank.org/indicator/EN.ATM.CO2E.KT/countries/1W?display=default"))

	ttnine_values = page.css('.views-field-wbapi-data-value-2009')

	ttnine_values.each do |ttnine|
		ttnine = ttnine.text.delete(',').to_i
		if ttnine == 0
			f.write("N/A"+ "\n")
		else f.write(ttnine.to_s + "\n") if !ttnine.nil? && ttnine != 2009
		end
	end
end