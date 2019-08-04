require_relative 'snake_eyes_classes'
class SnakeEyes
	def initialize
		@classes = SnakeEyesClasses.new
		start_program
	end

	# Add the total to the output above


	# Create a child class of your ‘die’ which outputs one of the values used in the game ‘Crown and Anchor’ - http://en.wikipedia.org/wiki/Crown_and_Anchor
	# Create a new program, using your die class above which mimics the game ‘Crown and Anchor’. Ask the user which area they would like to bet on (and how much), simulate the dice roll, and tell them how much they would have won (or lost)!
	# Create a new program, using your die class. Using the rules of Yahtzee, allow the user to make multiple throws of the dice and record their score

	def start_program
		puts "Welcome to Snake Eyes!"
		puts "Please chose an option."
		puts "1) Roll the dice"

		selected_option = gets.chomp
		handle_option(selected_option)
	end

	def handle_option(selected_option)
		case selected_option
		when "1"
			handle_option_1
		when "2"
			handle_option_2
		else
			puts 'ERROR: Not a valid selection'
			start_program
		end
	end

	def handle_option_1
		puts "How many times would you like to roll your dice?"
		rolls = gets.chomp
		if is_number?(rolls)
			@classes.number_rolls(rolls.to_i)
			
		else
			puts "ERROR: That wasn't a number."
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
end
