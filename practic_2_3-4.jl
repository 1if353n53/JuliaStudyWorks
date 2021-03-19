include("anotherFile.jl")

#Роман Лукьянчиков | КМБО-04-20
#https://github.com/Vibof/ProgrammingManual_part2/blob/main/practic_2_3-4.md

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
