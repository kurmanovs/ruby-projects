class OrangeTree
	def initialize
		@year = 0
		@height = 0
		@number_of_fruits = 0
	end

	def height
		@height
	end

	def one_year_passes
		if @year > 10 && rand(2) > 0
			@height = 0
			@number_of_fruits = 0
			return "The tree is died"
		else
			@year += 1;
			@height += 1;
			grow_fruits @height
		end
	end

	def get_fruits 
		@number_of_fruits
	end

	def pick_an_orange
		if @number_of_fruits > 0
			@number_of_fruits -= 1
			return "So delicious!"
		else
			return "No more oranges for this year."
		end
	end

	private
	def grow_fruits height
		if height >= 3
			@number_of_fruits += rand(5)
		end
	end


end

mytree = OrangeTree.new

for i in 1..10 do
	mytree.one_year_passes
	puts "year: #{i}"
	puts "Height: #{mytree.height}"
	puts "Fruits: #{mytree.get_fruits}"
	puts mytree.pick_an_orange
	puts "Oranges left: #{mytree.get_fruits}"
	puts
end