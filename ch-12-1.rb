puts "what year you were born?"
year = gets.chomp.to_i

puts "month?"
month = gets.chomp.to_i

puts "day?"
day = gets.chomp.to_i

year_old = ((Time.new - Time.local(year, month, day))/(3600*24*365)).to_i


puts "You are SPANKED #{year_old} times!"