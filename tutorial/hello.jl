msg = "Hello World"
println(msg)
println("2")
println("3")

x = 10
println(x + 1)
s = "Hello World"

안녕하세요 = "Hello 안녕하세요"
println(안녕하세요)

println(typeof(pi))

binary = 0b101010111101

println(typeof(binary))
println(binary)

hexadecimal = 0xFFFFFFFF
println(typeof(hexadecimal))
println(hexadecimal)

# value boundaries
for i in [Int8,Int16,Int32,Int64,Int128,UInt8,UInt16,UInt32,UInt64,UInt128]
    println("$(lpad(i,7)): [$(typemin(i)),$(typemax(i))]")
end

println(isnan(0/0))

# type conversion
x = Float32(-1.5)
println(typeof(x))

i = Inf
println(typeof(i))
x,y = 10,5

println(x ÷ y)

# false is a strong zero
println(NaN * false)
println(false * Inf)

# comparison chains
chain = 1 < 2 <= 2 < 3 == 3 > 2 >= 1 == 1 < 3 != 5
println("1 < 2 <= 2 < 3 == 3 > 2 >= 1 == 1 < 3 != 5 --> $(chain)")

# kronecker product
A=[1,2, 3,4]
B=[[3,4],[3,4]]
# C = kron(A,B)
# println("A ⊗ B is of type $(typeof(C))")
#println(C)

X = [1,2]
Y = [1,2]'
println(X)
println(Y)
println(kron(X,Y))

⊗(X,Y) = kron(X,Y)
println(X ⊗ Y)

