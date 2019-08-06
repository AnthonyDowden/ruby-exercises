require_relative 'dice'

class CasinoDice < Dice
	def initialize
		super
		dice_values = (1..6).to_a
		set_dice_values(dice_values)
	end
end