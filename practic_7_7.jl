function phi(n::Integer)
	ans, d = n, 2
	while d * d <= n
		if n % d == 0
			while n % d == 0 n /= d end
			ans -= ans / d
		end
		d += 1
	end
	
	if n > 1 ans -= ans / n end
	return ans
end