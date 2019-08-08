require_relative 'casino_dice'
require_relative 'crown_anchor_dice'
require_relative 'crown_anchor_game'
require_relative 'utilities'

class SnakeEyes
	def initialize
		@crown = CrownAndAnchorGame.new
		@basic_utilities = Utilities.new
		start_program
	end

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
			handle_option_1_1
		when "2"
			handle_option_2
		else
			puts 'ERROR: Not a valid selection'
			start_program
		end
	end

	def handle_option_1_1
		@crown.canvas_option
		puts "Place your bets!"
		@chosen_canvas = gets.chomp
		if @crown.canvas_checker(@chosen_canvas) === true
			handle_option_1_2
		else
			puts "Error: Not a canvas option!"
			handle_option_1_1
		end
	end

	def handle_option_1_2
		puts "how much would you like to bet?"
		@chosen_amount = gets.chomp
		if @basic_utilities.is_number?(@chosen_amount) == true
			@crown.users_bets(@chosen_canvas, @chosen_amount)
			bet_again
		else
			puts "Error: Not a number!"
			handle_option_1_2
		end
	end

	def bet_again
		puts "Would you like place more bets?(y/n)"
		answer = gets.chomp
		case answer
		when "y"
			handle_option_1_1
		when "n"
			roll_dice
		else
			puts "Error: Not a option!"
			bet_again
		end
	end

	def roll_dice
		puts "*passes you the 3 dice* (roll ;D)"
		roll = gets.chomp
		case roll
		when "roll", "throw", "lob", "drop", "toss"
			@crown.roll_anchor_dice
			@crown.compare_results
		else
			puts "Error: ya know how to roll dice right?"
			roll_dice
		end
	end
end


