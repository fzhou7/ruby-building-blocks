def substrings word, dictionary
	result_hash = Hash.new

	word.downcase!
	dictionary.each do |word|
		word.downcase!
	end
	#standardizes all words

	i=0
	while i < word.size do
		k=i
		while k < word.size do
			if dictionary.include? word[i..k]
				if result_hash.key?("#{word[i..k]}")
					result_hash["#{word[i..k]}"] += 1
				else
					result_hash["#{word[i..k]}"] = 1
				end
			end
			k += 1
		end
		i += 1
	end

	return result_hash
end