class Player
	def initialize
		@lives         = 5
		@health_points = 10
		@gold_coins    = 0	
	end
	
	def level_up
		@lives += 1
	end

	def collect_treasure
		@gold_coins += 1
		if @gold_coins % 10 == 0
			self.level_up
		end
	end
	
	def do_battle(damage)
  	@health_points -= damage
	  if @health_points <= 0
		  @lives -= 1
		  @health_points = 10
		end 
		if @lives <= 0
			self.restart
		end
	end

	def restart
		@lives         = 5
		@health_points = 10
		@gold_coins    = 0
	end

end
