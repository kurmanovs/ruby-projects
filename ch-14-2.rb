def clock &block
	curr_hour = Time.new.hour
  if curr_hour > 12 then curr_hour -= 12 end
  if curr_hour == 0 then curr_hour = 12 end
	curr_hour.times do
		block.call
  end
end

clock do
	puts "DONG"
end