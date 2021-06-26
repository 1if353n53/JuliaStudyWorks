#Tasks 2 and 3
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