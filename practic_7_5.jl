function eratosthenes(n)
    primes = ones(Bool, n)
    primes[1] = false

    for i = 2:n
        if primes[i]
            num = i * i
            while num <= n
                primes[num] = false
                num += i
            end
        end
    end

    return primes
end

a = eratosthenes(20)
for i = 1:20 println(i, " ", a[i]) end
