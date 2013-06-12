require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('countries.txt', 'w') do |f|

	page = Nokogiri::HTML(open("http://data.worldbank.org/indicator/EN.ATM.CO2E.KT/countries/1W?display=default"))

	countries = page.css('.views-field-country-value a')

	countries.each do |country|
		country = country.text.strip
 		f.write(country + "\n") if !country.nil?
 	end
end