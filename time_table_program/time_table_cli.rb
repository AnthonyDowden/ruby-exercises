require_relative 'times_table'
class TimeTableCli
	def initialize
		@times_table = TimesTable.new
		start_program
	end

	def start_program
		puts "What option would you like to pick?"
		puts "1) Output my number as a time table"
		puts "2) Random time table"
		puts "3) list of all times tables (1-12)"
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
		else
			puts 'ERROR: Not a valid selection'
		end
	end

	def handle_option_1
		puts "What number would you like me to show the times table for?"
		users_number = gets.chomp
		if is_number?(users_number)
			result = @times_table.get_times_table(users_number.to_i)
			result.each do |item|
				puts item
			end
		else
			puts "ERROR: Not a number"
		end
	end

	def handle_option_2
		result = @times_table.random_times_table
		result.each do |item|
			puts item
		end
	end

	def handle_option_3
		result = @times_table.get_times_table_list
		result.each do |item|
			puts item
		end
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