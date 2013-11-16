class Array
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

	def myshuffle
	  return recursive_shuffle self, []
	end
end

a = ['aaa', 'bbb', 'ccc', 'ddd' ]

puts a.myshuffle