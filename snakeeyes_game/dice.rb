class Dice

	def initialize
		@dice_values = []
	end

	def set_dice_values(values)
		@dice_values = values
	end

	def roll
		sides = @dice_values.length
		selected_side = rand(1..sides)
		@dice_values[selected_side - 1]
	end
end