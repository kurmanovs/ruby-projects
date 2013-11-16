def profile block_description, &block
	profile_on = false
	if profile_on
		start_time = Time.now
		block.call
		duration = Time.now - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end


profile "count to a million" do |profile_on = true|

	number = 0
	1000000.times do
		number += 1
	end
	puts "#{number}"
end