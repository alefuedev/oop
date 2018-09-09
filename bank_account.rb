class BankAccount 
	def initialize(balance,interest_rate)
		@balance = balance
		@interest_rate = interest_rate 
	end

	def balance
		@balance
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		if @balance >= amount
			 @balance -= amount
		else
			 return "The amount that you ask for is more than your current balance."
		end
	end

	def gain_interest
		interest = (@balance * @interest_rate) / 100 	
		@balance += interest
	end

end

