require_relative 'casino_dice'
require_relative 'crown_anchor_dice'
class SnakeEyes
	def initialize
		start_program
	end
	# Create a program which outputs a random number between 1 and 6, simulating the roll of a die
	# Make your program ask the user how many dice s/he would like to roll. Display the result as individual numbers (e.g. 4, 6, 2 if three dice were rolled)
	# Add the total to the output above
	# Create a class which represents a die and re-structure your program to use this
	# Create a child class of your ‘die’ which outputs one of the values used in the game ‘Crown and Anchor’ - http://en.wikipedia.org/wiki/Crown_and_Anchor
	# Create a new program, using your die class above which mimics the game ‘Crown and Anchor’. Ask the user which area they would like to bet on (and how much),
	# simulate the dice roll, and tell them how much they would have won (or lost)!
	# Create a new program, using your die class. Using the rules of Yahtzee, allow the user to make multiple throws of the dice and record their score
	def start_program
		puts "Which game would you like to play?"
		puts "1) Crown and Anchor"
		puts "2) Yahtzee"
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

	end

	def handle_option_2

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
