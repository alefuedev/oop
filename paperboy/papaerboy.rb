class Paperboy
	
	def initialize(name)
		@name = name
		@experience = 0
		@earnings = 0
	end
	
	def earnings
		@earnings 
	end

	def quota
		minimum = 50
		@experience = @experience / 2 + minimum
		
	end
	
	def deliver(start_address,end_address)
		papers_deliver = end_address - start_address + 1
		if papers_deliver < @experience
			 money = papers_deliver * 0.25
			 @earnings = money
			 @earnings -= 2
		elsif	papers_deliver <= 50
	 		 money = papers_deliver * 0.25
			 @earnings = money
		else		
			extra = papers_deliver - 50
			regular_earning = (papers_deliver - extra) * 0.25
			extra = extra * 0.50
			@earnings = extra + regular_earning
		end
		@experience = papers_deliver
	end

	def report
		p "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
	end

end
