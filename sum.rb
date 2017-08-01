def calc (op, num1, num2)
	if op == "addition"
		calc = num1 + num2 

	elsif op == "subtract"
		calc = num1 - num2

	elsif op == "multiply"
		calc = num1 * num2

	elsif op == "divide"
		if num2 == 0
			calc = "Cant Divide By Zero!"
		else 
			calc = num1 / num2
		end
	else
	end
	calc.to_s
end 