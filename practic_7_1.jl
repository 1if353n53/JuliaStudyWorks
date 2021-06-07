function fastpow(a, n)
	b, p, k = a, 1, n
	
	while k > 0
		if k % 2 == 0
			k /= 2
			b *= b
		else
			k -= 1
			p *= b
		end
	end

	return p
end
