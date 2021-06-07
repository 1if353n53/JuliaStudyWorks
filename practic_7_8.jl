function ex_euc(a::Integer, b::Integer)
	
	x, x1, y, y1 = 1, 0, 0, 1
	while b != 0
		q = a ÷ b
		a, b = b, a % b

		x, x1 = x1, x - x1 * q
		y, y1 = y1, y - y1 * q
	end

	return x, y, a
end
