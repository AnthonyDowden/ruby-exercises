class CrownAndAnchorGame
	def initialize
		@crown_anchor_dice = CrownAnchorDice.new
		@canvas = {
			"heart" => 0,
			"crown" => 0,
			"diamond" => 0,
			"spade" => 0,
			"anchor" => 0,
			"club" => 0
		}
	end

	def canvas_option
		@canvas.each { |key, value| puts "#{key}" }
	end

	def display_canvas
		@canvas.each {|key,value| puts "#{key}: #{value}"}
	end

	def roll_anchor_dice
		@roll_result = []; 3.times { @roll_result << @crown_anchor_dice.roll}
		@roll_result.each {|key, value| puts "#{key}"}
	end

	def users_bets(chosen_canvas, chosen_amount)
		@canvas[chosen_canvas] = chosen_amount
	end

	def canvas_checker(check_canvas)
		@canvas.key?(check_canvas)
	end

	def compare_results
		puts @canvas.assoc(@roll_result)
	end
end