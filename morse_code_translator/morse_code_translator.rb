class MorseCodeTranslator
	def initialize
		@dictionary = {
			"a" => "._",
			"b" => "_...",
			"c" => "_._.",
			"d" => "_..",
			"e" => ".",
			"f" => ".._.",
			"g" => "__.",
			"h" => "....",
			"i" => "..",
			"j" => ".___",
			"k" => "_._",
			"l" => "._..",
			"m" => "__",
			"n" => "_.",
			"o" => "___",
			"p" => ".__.",
			"q" => "__._",
			"r" => "._.",
			"s" => "...",
			"t" => "_",
			"u" => ".._",
			"v" => "..._",
			"w" => ".__",
			"x" => "_.._",
			"y" => "_.__",
			"z" => "__..",
			"1" => ".____",
			"2" => "..___",
			"3" => "...__",
			"4" => "...._",
			"5" => ".....",
			"6" => "_....",
			"7" => "__...",
			"8" => "___..",
			"9" => "____.",
			"0" => "_____"
		}
		@dictionary_inverse = @dictionary.invert
	end

	def print_dictionary
		@dictionary.each do |key, value|
			puts "#{key} : #{value}"
		end
	end

	def print_range(range)
		unless range.is_a? Range
			puts "ERROR: Argument was not a range"
			return
		end
		range.each do |item|
		  puts @dictionary[item.to_s]
		end
	end

	def translate_to_morse_code(sentence)
		unless sentence.is_a? String
			puts "ERROR: Argument was not a string"
			return
		end
		sentence.downcase!
		words = sentence.split(' ')
		morse_words = words.map do |word|
			letters = word.split('')
			letters.map { |letter| @dictionary[letter] }.join('   ')
		end
		morse_words.join('       ')
	end

	def translate_to_english(sentence)
		unless sentence.is_a? String
			puts "ERROR: Argument was not a string"
			return
		end
		words = sentence.split('       ')
		morse_words = words.map do |word|
			letters = word.split('   ')
			letters.map { |letter| @dictionary_inverse[letter] }.join('')
		end
		morse_words.join(' ')
	end
end