




puts "Hello user"
puts "Please type in your first name"
name = gets.strip

if name == 'anthony'
	puts "Hello admin"
else
	puts "greeting #{name}"
end

puts "Would you like to know the time?"
answer = gets.strip

if answer == 'yes'
	puts Time::now
end
if answer == 'no'
	puts "understood"
end




