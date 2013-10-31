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

dataSet = []
begin
	data = gets.chomp
	dataSet.push data
end while data != ""

dataSet.sort.each do |data|
	puts data
end

=begin
Kurmanov Seitek
Chapter 8 examples.
Task 2: Table of contents, revisited.​ Rewrite your table of contents program
          here.  Start the program
          with an array holding all of the information for your table
          of contents (chapter names, page numbers, and so on).  Then print
          out the information from the array in a beautifully formatted
          table of contents
=end
line_width = 51
table = [ [ "Getting Started", 1 ], [ "Numbers", 9 ], [ "Letters", 13 ] ]

puts "Table of Contents".center(line_width)
table.each do |e|
	puts e[0].to_s.ljust(line_width/2) + e[1].to_s.rjust(line_width/2)
end