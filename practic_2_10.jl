function cycleshift!(a::AbstractVector, m::Int)
    while m > 0
        m -= 1
        temp = a[length(a)]
        pop!(a)
        insert!(a, 1, temp)
    end
    return a
end

a = [1, 1, 2, 3, 5]
cycleshift!(a, 2)
for i in a print(i, " ") end