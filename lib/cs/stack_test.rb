class StackTest

	def main
		
		fib(10)	
	end

  def factorial(value)
      if value <= 1
        1
      else
        value * factorial( value - 1 )
      end
    end

  def fib(value)
  	if value <= 2 
  		1
  	else
  		fib(value-1) + fib(value-2)
  	end
  end

	def x(value)
		if value !=1
			x(value -1)
		end
		puts value
	end
end





