def assign arr
	new_arr = []
	alph = {'a' => 1,
			'b' => 2,
			'c' => 3,
			'd' => 4,
			'e' => 5,
			'f' => 6,
			'g' => 7,
			'h' => 8,
			'i' => 9,
			'j' => 10,
			'k' => 11,
			'l' => 12,
			'm' => 13,
			'n' => 14,
			'o' => 15,
			'p' => 16,
			'q' => 17,
			'r' => 18,
			's' => 19,
			't' => 20,
			'u' => 21,
			'v' => 22,
			'w' => 23,
			'x'	=> 24,
			'y' => 25,
			'z' => 26}

	arr.each do |item|
		if alph[item] == nil
			new_arr << item
		else new_arr << alph[item]
		end
	end

	return new_arr;
end

def reassign arr, shift_factor
	new_arr = []

	arr.each do |item|
		if item == " "
			new_arr << " "
		else
			new_arr << (item + shift_factor) % 26
		end
	end

	return new_arr;
end

def rereassign arr
	new_arr = []
	alph = {1 => 'a',
			2 => 'b',
			3 => 'c',
			4 => 'd',
			5 => 'e',
			6 => 'f',
			7 => 'g',
			8 => 'h',
			9 => 'i',
			10 => 'j',
			11 => 'k',
			12 => 'l',
			13 => 'm',
			14 => 'n',
			15 => 'o',
			16 => 'p',
			17 => 'q',
			18 => 'r',
			19 => 's',
			20 => 't',
			21 => 'u',
			22 => 'v',
			23 => 'w',
			24 => 'x',
			25 => 'y',
			26 => 'z'}

	arr.each do |item|
		if alph[item] == nil
			new_arr << item
		else new_arr << alph[item]
		end
	end

	return new_arr;
end

puts "Enter string:"
input = gets.chomp
puts "Enter shift factor for cipher:"
shift_factor = gets.chomp.to_i

char_arr = input.split("")
char_to_int = assign(char_arr)
shifted_int = reassign(char_to_int, shift_factor)
shifted_char = rereassign(shifted_int)

encryption = shifted_char.join("")

puts encryption