require_relative 'morse_code_translator'
class MorseCodeCli
	def initialize
		@translator = MorseCodeTranslator.new
		start_program
	end

	def start_program
		puts 'What would you like to do'
		puts '1) Translate English to Morse Code'
		puts '2) Translate Morse Code to English'
		puts '3) Print Range'
		puts '4) Print Morse Code dictionary'
		selected_option = gets.chomp
		handle_option(selected_option)
	end

	def handle_option(selected_option)
		case selected_option
		when "1"
			handle_option_1
		when "2"
			handle_option_2
		when "3"
			handle_option_3
		when "4"
			handle_option_4
		else
			puts 'ERROR: Not a valid selection'
		end
	end

	def handle_option_1
		puts 'Enter the sentence you want to translate:'
		sentence = gets.chomp
		puts @translator.translate_to_morse_code(sentence)
		continue_program
	end

	def handle_option_2
		puts 'Enter the morse code you want to translate to english (3 spaces between letters , 7 spaces between words)'
		sentence = gets.chomp
		puts @translator.translate_to_english(sentence)
		continue_program
	end

	def handle_option_3
		puts 'Would you like the range for letters or numbers?'
		puts '1) Letters'
		puts '2) Numbers'
		range_type = gets.chomp
		case range_type
		when "1"
			handle_option_3_1
		when "2"
			handle_option_3_2
		else
			puts 'ERROR: Not a valid selection'
			handle_option_3
		end
	end

	def handle_option_3_1
		puts "Enter the First Letter"
		first_letter = gets.chomp
		puts "Enter the Second Letter"
		second_letter = gets.chomp
		if is_letter?(first_letter) && is_letter?(second_letter)
			@translator.print_range(Range.new(first_letter, second_letter))
			continue_program
		else
			puts "ERROR: You must enter a single letter between a-z!"
			handle_option_3_1
		end
	end

	def handle_option_3_2
		puts "Enter the First number"
		first_number = gets.chomp
		puts "Enter the Second number"
		second_number = gets.chomp
		if is_number?(first_number) && is_number?(second_number)
			@translator.print_range(Range.new(first_number, second_number))
			continue_program
		else
			puts "ERROR: you must enter a single number between 0-9!"
			handle_option_3_2
		end
	end

	def handle_option_4
		@translator.print_dictionary
		continue_program
	end

	def continue_program
		puts 'Do you need another service? (Y/n)'
		if gets.chomp.downcase === 'n'
			end_program
		else
			start_program
		end
	end

	def is_number?(value)
		begin
			Integer(value)
			return true
		rescue
			return false
		end
	end

	def is_letter?(value)
		letters_check = ("a".."z").to_a
		letters_check.include?(value)
	end

	def end_program
		puts 'Thanks, bye!'
	end
end