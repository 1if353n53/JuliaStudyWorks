function insertX!(A, n, x)
	answer = []
	for i = 1:n - 1
        push!(answer, A[i])
    end
	push!(answer, x)
	for i = n + 1:length(A) + 1
        push!(answer, A[i - 1]) 
    end
    A = answer
    return A
end
a = [1, 1, 2, 3, 5]
a = insertX!(a, 4, 30)
for i = 1:length(a) print(a[i], " ") end