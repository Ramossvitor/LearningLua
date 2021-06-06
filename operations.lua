add = function(index_1, index_2)
    return index_1 + index_2
end

divide = function(index_1, index_2)
    return index_1 / index_2
end

multiply = function(index_1, index_2)
    return index_1 * index_2
end

subtract = function(index_1, index_2)
    return index_1 - index_2
end

operations = {
    add = add,
    divide = divide,
    multiply = multiply,
    subtract = subtract
}

return operations