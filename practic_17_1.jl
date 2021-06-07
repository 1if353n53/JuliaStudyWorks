function dfsearch(start_ver, graph)
    mark = zeros(Bool, length(graph))
    stack = [start_ver]
    mark[start_ver] = 1
    while !isempty(stack)
        v = pop!(stack)
        println(v)
        for u in graph[v]
            if mark[u] == 0
                push!(stack, u)
                mark[u] = 1
            end
        end
    end
end

v = [[2, 3], [1], [1, 2]]
arr = dfsearch(2, v)