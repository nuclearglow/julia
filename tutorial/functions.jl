function f(x,y)
    return x+y
end

println(f(1,2))

∑(x,y) = x+y

println(∑(1,2))

# typing

function sum(x::Integer, y::Integer)::Float64
    return x + y
end

println(sum(200,6))

# nothing
# https://docs.julialang.org/en/v1/manual/functions/#Returning-nothing

function printx(x::String)
    println("x = $(x)")
end

result = printx("10")
println("$result -> $(typeof(result)) -> $(result === nothing)")

