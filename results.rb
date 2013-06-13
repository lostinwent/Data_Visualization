data = File.read("countries.txt")
countries = data.split(/$\s/)

data_v2 = File.read("values_2009.txt")
values_2009 = data_v2.split

results_hash = {}
i = 0

countries.each do |country|
	results_hash[country] = values_2009[i]
	i += 1
end

results_hash = results_hash.sort_by{|k, v| v}

File.open('search_results.txt', 'w') do |f|
	results_hash.each do |k, v|
		f.write(k + "\n")
		f.write(v.to_s + "\n")
	end
end