Dir.chdir 'C:\Users\Seitek\workspace\ruby-stuff\photos'
pic_names = Dir['C:/Users/Seitek/workspace/ruby-stuff/new/*.jpg']
puts 'Enter batch name:'

batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do | name |
	print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist?(new_name)
    puts "error, a file with name #{new_name} already exists..."
    exit 
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end

puts 
puts 'Done, cutie!'