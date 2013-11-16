f = open("birthdays")
name = {}
f.each {|line| 
	line = line.chomp
	name[ line[ 0, line.index(',') ] ] = line[ line.index(',')+2, line.length ]
}

puts "How's birthday you want to know?"
your_name = gets.chomp

if !name[ your_name ]
	"No data on #{your_name}"
else
	puts "#{your_name}: #{name[ your_name ]}"
end