function reverse!(a)
    for i = 1:length(a) ÷ 2 a[i], a[length(a) - i + 1] = a[length(a) - i + 1], a[i] end
end

a = [1, 2, 3, 4, 5]
reverse!(a)
a
