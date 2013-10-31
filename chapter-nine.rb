=begin
Kurmanov Seitek
Chapter 8 examples.
Task 1: Building and sorting an array.​ Write the program we talked about at the beginning
of this chapter, one that asks us to type as many words as
we want (one word per line, continuing until we just
press ​Enter​
on an empty line) and then repeats the words back to us in
alphabetical order. Make sure to test your program thoroughly; 
for example, does hitting Enter​ on an empty line ​always​ 
exit your program?  Even on the first line?  And the second?  ​Hint:​ There’s a
lovely array method that will give you a sorted version of an array: sort​. Use it!
=end

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	return answer
end
puts 'Hello, and thank you for'
puts
ask 'Do you like eating tacos'