
morse_code = Hash["a" => "._", "b" => "_...", "c" => "_._.", "d" => "_..", "e" => ".", "f" => ".._.", "g" => "__.", "h" => "....", "i" => "..", "j" => ".___", "k" => "_._", "l" => "._..", "m" => "__", "n" => "_.", "o" => "___", "p" => ".__.", "q" => "__._", "r" => "._.", "s" => "...", "t" => "_", "u" => ".._", "v" => "..._", "w" => "_.._", "x" => "_.._", "y" => "_.__", "z" => "__..", "1" => ".____", "2" => "..___", "3" => "...__", "4" => "...._", "5" => ".....", "6" => "_....", "7" => "__...", "8" => "___..", "9" => "____.", "0" => "_____" ]

puts "Would you like to see the morse code list?(yes/no)"
answer = gets.chomp
if answer == "yes"
	morse_code.each do |key, value|
		puts "#{key} : #{value}"
	end
end

if answer == "no"
	puts "Would you like me to convert your text to morse code?(yes/no)"
	answer == gets.chomp
end

if answer == "yes"
	puts "Please enter a word or sentence."
	word = gets.chomp
	morse_code_request = morse_code.fetch(word.split.each)
end