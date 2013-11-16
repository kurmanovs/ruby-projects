# encoding: UTF-8
Dir.chdir 'C:\Users\Seitek\Music'
mp3_list = Dir['**/*'].reject { |fn| File.directory?(fn) }

m3u_fn = 'seitek_list.m3u'

def recursive_shuffle unshuffled_array, shuffled_array
    if unshuffled_array.length > 1
      randIndex = rand( unshuffled_array.length )
      shuffled_array << unshuffled_array.delete_at( randIndex )
      recursive_shuffle unshuffled_array, shuffled_array
    else
      shuffled_array << unshuffled_array[ 0 ]
      return shuffled_array
    end
end

def shuffle some_array
  return recursive_shuffle some_array, []
end

mixed_list = shuffle mp3_list

File.open m3u_fn, 'w:UTF-8' do |f|
	mixed_list.each do | mp3 |
		f.write "#{mp3}\n"
	end
end

#Encoding.filesystem = "UTF-8"
p Encoding.find("filesystem") 
File.open(m3u_fn, "r:UTF-8") do |f| 
  puts f.read 
end