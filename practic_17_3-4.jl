function getValence(v, out = false)
      if out == true
            for u in v println(length(u)) end
      else
            res = []
            for i = 1:length(v) push!(res, 0) end
            for u in v
                  for x in u res[x] += 1 end
            end

            for x in res println(x) end
      end
end
  
v = [[2, 3], [1], [1, 2]]

arr = getValence(v, true)
println("======")
arr = getValence(v, false)