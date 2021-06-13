function eratosphen(n)
    primes = ones(Bool, n)
    primes[1] = false
    for i = 2:n
        if primes[i] == true
            num = i * i
            while num <= n
                primes[num] = false
                num += i
            end
        end
    end

    return primes
end

a = eratosphen(28)
for i = 1:28 println(i, " ", a[i]) end
