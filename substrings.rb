def substrings word, dictionary
	result_hash = Hash.new

	method_string = word.downcase

	i=0
	while i < method_string.size do
		k=i
		while k < method_string.size do
			if dictionary.include? method_string[i..k]
				if result_hash.key?("#{method_string[i..k]}")
					result_hash["#{method_string[i..k]}"] += 1
				else
					result_hash["#{method_string[i..k]}"] = 1
				end
			end
			k += 1
		end
		i += 1
	end

	return result_hash
end