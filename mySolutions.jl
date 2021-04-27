include("anotherFile.jl")

#Роман Лукьянчиков | КМБО-04-20
#Task 1
function findallmax(A::AbstractArray)::AbstractArray{Int}
  ans = []
  M = typemin(eltype(A))
  for (index, el) in enumerate(A)
    if el == M
      push!(ans, index)
    elseif el > M
      ans = []
      push!(ans, index)
      M = el
    end
  end
  return ans
end

#Task2-3
function BSOptimized!(A)
  n = length(A)

  for i in 1:n
    swapped = false
    
    for j in 1:n-i
      if A[j] > A[j + 1]
        A[j], A[j + 1] = A[j + 1], A[j]
        swapped = true
      end
    end
    
    if swapped == false
      break
    end
  end
end

function unique(A)
	res = []
	sort(A)
	i, n = 1, length(A)
	while i + 1 <= n
		if A[i] != A[i + 1]
			push!(res, A[i])
		end
		i += 1
	end
	push!(res, A[i])
	
	return res
end

function allunique(A)
    i, n = 1, length(A)

    sort(A)
    for i=1:n - 1
        if A[i] == A[i + 1]
            return false
            break
        end
    end

    return true
end

function reverse!(A)
    i, n = 1, length(A)

    for i = 1:n//2
        A[i], A[n - i + 1] = A[n - i + 1], A[i]
    end

    return A
end

#Практика 8. Задача 1.
function merge_sort!(A, p = 1, r = length(A)) #в худшем случае за O(n * logn), а в лучшем за O(n)
    if p < r
        q = div(p + r, 2)
        merge_sort!(A, p, q)
        merge_sort!(A, q + 1, r)
        merge!(A, p, q, r)
    end
    return A
end

function merge!(A, p, q, r)
    sentinel = typemax(eltype(A))
    L = A[p:q]
    R = A[(q + 1):r]
    push!(L, sentinel)
    push!(R, sentinel)
    i, j = 1, 1
    for k in p:r
      if L[i] <= R[j]
          A[k] = L[i]
          i += 1
      else
          A[k] = R[j]
          j += 1
      end
    end
end

#Практика 8. Задача 3.
function compareSortAlg(n)
	A, B = [], []
	A = randn(n)
	B = A
	x, y = @time sort!(A), @time merge_sort!(B)
	return x, y
	#Например, для массива длинной 10^7 результат будет 11.457315 VS 13.910890 секунд
end

#Практика 7. Задача 4.
function isPrime(n)
	d = 2
	while d * d <= n && n % d != 0
		d += 1
	end
	return n > 1 && d * d > n
end

#Практика 7. Задача 6.
function factor(n)
    res = Set([])
	cntArr = []
    d = 2
    while d * d <= n
		cnt = 0
        while n % d == 0
            push!(res, d)
			cnt += 1
            n /= d
		end
		if cnt > 0
			push!(cntArr, cnt)
		end
		d += 1
	end
    if n > 1
        push!(res, n)
		push!(cntArr, 1)
	end
    return res, cntArr
end

#Практика 7. Задача 2.
function fibonacci(n::Integer)
	a = 1 
	b = 1
	c = 1
	rc = 0
    d = 0
	rd = 1

	while n > 0
		if n % 2 == 1
			tc = rc
			rc = rc*a + rd*c
			rd = tc*b + rd*d
		end

		ta, tb, tc = a, b, c
		a = a*a + b*c
		b = ta*b + b*d
		c = c*ta + d*c
		d = tc*tb + d*d
		n >>= 1
	end

	return rc
end
