n = 0
times_table = 0
number = 0

loop do
	print "Would you like to see the two times table?"
	answer = gets.chomp
	break if answer == "no"
	if answer == "yes"
		while n < 13
			two_times_answer = n * 2
			puts "#{n} * 2 = #{two_times_answer}"
			n += 1
		end
		break
	end
end


loop do
	print "Would you like me to times a number for you?"
	answer = gets.chomp
	break if answer == "no"
	if answer == "yes"
		print "Please enter your number?"
		number = gets.chomp.to_i
		while times_table < 13
			user_times_answer = number * times_table
			puts "#{number} * #{times_table} = #{user_times_answer}"
			times_table += 1
		end
	end
	if answer == "-1"
		while times_table < 13
			times_table_answer = number * times_table
			puts "#{number} * #{times_table} = #{times_table_answer}"
			times_table += 1
			if times_table == 13
				number += 1
				times_table = 0
			end
			break if number == 13
		end
	end
end

class Time_Table

end


