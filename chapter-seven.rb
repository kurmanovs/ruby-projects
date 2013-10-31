=begin
Lyrics of the song 99 Bottles of Beer
=end
num_of_bottles = 99
while num_of_bottles >= 0
	if num_of_bottles == 1
		puts num_of_bottles.to_s + "bottles of beer on the wall, " + num_of_bottles.to_s + " bottles of beer."
		puts "Take one down and pass it around, no more bottles of beer on the wall."
	elsif num_of_bottles == 0
		puts "No more bottles of beer on the wall, no more bottles of beer."
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	else
		puts num_of_bottles.to_s + "bottles of beer on the wall, " + num_of_bottles.to_s + " bottles of beer."
		puts "Take one down and pass it around, " + (num_of_bottles-1).to_s + " bottles of beer on the wall."
	end
	num_of_bottles -= 1
end

=begin
Deaf Grandma program
(in order to exit, write BYE three times in a row)
=end
puts "Tell something to gradma:"
byeCounter = 0

while byeCounter != 3
	toGrandma = gets.chomp
	
	if toGrandma == "BYE"
		byeCounter += 1
	else
		byeCounter = 0
	end

	if(toGrandma != toGrandma.upcase)
		puts "HUH?!  SPEAK UP, SONNY!"
	else
		puts "NO, NOT SINCE "+(rand(1951-1930)+1930).to_s+"!"
	end
	puts "Tell something to gradma:"
end