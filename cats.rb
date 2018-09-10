class Cat

	def initialize(name,preferred_food,meal_time)
		@name = name
		@preferred_food = preferred_food
		@meal_time = meal_time
	end

	def eats_at
		p "#{@meal_time}"
	end
	
	def meow
		p "Hi my name is #{@name}, I like #{@preferred_food} at #{@meal_time}."
	end
	
end
