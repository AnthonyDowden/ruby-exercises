class TimesTable
	def get_times_table(number)
		my_range = 1..12
		my_range.map do |multiplier|
			"#{number} x #{multiplier} = #{number * multiplier}"
		end
	end

	def get_times_table_list
		my_range = 1..12
		my_range.map do |table|
			get_times_table(table)
		end
	end

	def random_times_table
		number = rand(1..12)
		get_times_table(number)
	end
end