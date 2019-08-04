class HelloWorld
	def initialize
		start_program
	end

	def start_program
		puts "Please enter your name"
		users_name = gets.chomp
		handle_name(users_name)
	end

	def handle_name(users_name)
		case users_name.downcase
		when "anthony"
			puts "Greeting me lord!"
			time_date
		when "bill"
			puts "Sup Bill!"
			time_date
		when "matt"
			puts "Matt in the house!"
			time_date
		when "tiago"
			puts "Tiago my man!"
			time_date
		else
			puts "Welcome #{users_name}"
			time_date
		end
	end

	def time_date
		puts "would you like to know the time?(y/n)"
		time_date_answer = gets.chomp
		handle_answer(time_date_answer)
	end

	def handle_answer(users_answer)
		case users_answer
		when "y"
			puts Time::new
			end_program_happy
		when "n"
			puts "Umm...ok"
			end_program_sad
		else
			puts 'ERROR: Not a valid selection'
			time_date
		end
	end

	def end_program_happy
		puts 'Im so glad i could help! bye!'
	end

	def end_program_sad
		puts 'Time is a gift, precious and rare. Take it and make of it all you, use all you can to have the time of your life!'
	end

end