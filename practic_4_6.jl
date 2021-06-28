function permute_!(A, perm)
    a = zeros(length(perm))
    for (indx, i) in enumerate(perm)
        a[i] = A[indx]
    end
    return a
end

permute_!([1, 2, 3], [3, 2, 1])
