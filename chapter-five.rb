=begin
Kurmanov Seitek
Chapter 5 examples.
=end

varNum1 = 1
varStr2 = '4'

puts "Adding numbers after conversion:\n"
puts varNum1 + varStr2.to_i
#result: 5

puts "Adding Strings after conversion:\n"
puts varNum1.to_s + varStr2
#result: 14

#float conversion examples
puts '999.9966'.to_f # this will print 999.9966
puts '999.9966'.to_i # this will print 999
puts '44 this text will be ignored'.to_i # prints 44
puts 'String'.to_f # prints 0.0 because there is no float digit in the beginning of the string

puts 'What\'s your first name, buddy?'
firstName = gets.chomp #chomp removes the EOL mark

puts '...and what is your last name?'
lastName = gets.chomp
puts 'Welcome to Ruby, '+firstName+' '+lastName+'!\n'

puts 'What is your favorit number?'
favNum = gets.to_i
newNum = favNum + 1
puts 'Would you like ' + newNum.to_s + ' to be your favorite number?!'
