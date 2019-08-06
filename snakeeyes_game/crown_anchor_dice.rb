require_relative 'dice'

class CrownAnchorDice < Dice
	def initialize
		super
		dice_values = ["crown", "anchor", "diamond", "spade", "club", "heart"]
		set_dice_values(dice_values)
	end
end