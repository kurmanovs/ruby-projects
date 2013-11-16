=begin
Task from Chapter 10.3: Dictionary Sort  
=end
a = [ 'zzz', 'aab', 'aac', 'Bca', 'AAB', "AAC", 'aac', 'bba' ]
b = [ 'lll', 'ccc', 'sss', 'rrr', 'kkk', "yyy", 'ddd', 'ttt' ]

def recursive_sort unsorted_array, sorted_array
  smallest = unsorted_array[0]
  smallest_index = 0

  unsorted_array.each_with_index do |e, i|
    if i > 0
      if e.downcase < smallest.downcase
        smallest = e
        smallest_index = i
      end
    end
  end

  sorted_array << unsorted_array.delete_at( smallest_index )
  if !unsorted_array.empty?
    recursive_sort unsorted_array, sorted_array
  else
    return sorted_array
  end
end

def sort some_array
  return recursive_sort some_array, []
end

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
puts "Sorted Array: "
puts shuffle a
puts "Shuffled Array: "
puts sort b