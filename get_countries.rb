require 'rubygems'
require 'nokogiri'
require 'open-uri'

# File.open('cities.txt', 'w') do |f|

	page = Nokogiri::HTML(open("http://data.worldbank.org/indicator/EN.ATM.CO2E.KT/countries/1W?display=default"))

	countries = page.css('.views-field-country-value').text.strip

	puts countries

# end