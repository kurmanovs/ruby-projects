=begin
Angry boss program.
=end
puts "What do you want?"
answer = gets.chomp
puts "WHADDAYA MEAN \""+answer.upcase+"\"?!? YOU'RE FIRED!!"

=begin
Formatted table of contents program.
=end
line_width = 51
puts "Table of Contents".center(line_width)
puts "Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2)
puts "Chapter 2: Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2)
puts "Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2)

=begin
Some arithmetics.
=end
puts "\nArithmetics:"
puts 5**2   #square
puts 5**0.5 #root
puts 7/3
puts 7%3    #modulus
puts 365%7
puts "\nAbsolute values:"
puts (5-2).abs #absolute value of 3
puts (2-5).abs #absolute value of -3

#Random number example
puts "Random number from min=5 to max=100:"
puts rand(101-5)+5

#some more Math constants and methods
puts "Math:"
puts Math::PI
puts Math::E
puts Math.cos(Math::PI)
puts Math.tan(Math::PI)
puts Math.sin(Math::PI)
puts Math.sqrt(81)
