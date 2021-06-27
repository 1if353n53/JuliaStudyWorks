function partsort(A, b)
   less, equal, more = [], [], []
    for i in A
        if i < b push!(less, i)
        elseif i == b push!(equal, i)
        else push!(more, i) end
    end
    for i in equal push!(less, i) end
    for i in more push!(less, i) end
    return less
end

a = [5, 4, 3, 2, 1]
a = partsort(a, 3)
for i in a print(i, " ") end
