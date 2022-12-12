# https://docs.julialang.org/en/v1/manual/strings/

# String Basics

# single line strings
s = "Hello World with newline\n"
print(s)

# multiline strings
m = """Hello'Test'"""
print(m)

# string indexing

println(m[5])
println(m[begin])
println(m[end])

println(m[begin+1])
println(m[end-1])

println(m[1:5])

println("$(m[5]) -> typeof $(typeof(m[5]))")
println("$(m[5:5]) -> typeof $(typeof(m[5:5]))")

# convenience

println("$(SubString(m, 3,6))")

chaos = "    sdklhjfgsdejkl      "
println(strip(chaos))

# unicode
# https://unicode-table.com/en/
# https://unicode-table.com/en/2764/
unicode = "\u2764"
println(unicode)

# string iteration
for c in chaos
    print("$(c) ")
end

# iterator over valid indices
println(collect(eachindex(chaos)))
for i in collect(eachindex(chaos))
    print("$(i): $(chaos[i]) ")
end


for (i, x) in enumerate(strip(chaos))
    println("Index is $(i), element is $(x)")
end

concatenated = string(chaos, " <-> ", chaos)
println(concatenated)

concatenated2 = chaos * " <-> " * chaos
println(concatenated2)

# dollar interpolation for variables, $() interpolation for expressions yielding anything that can be converted to a string
concatenated3 = """$(chaos*"1") <-> $chaos"""
println(concatenated3)
concatenated4 = "1 + 2 = $(1 + 2)"
println(concatenated4)

vector = [1,2,3,4,5]
println("vector = $(vector*vector')")

# index search
println("$(findfirst("i", chaos)) -> typeof $(typeof(findfirst("i", chaos)))")
println("$(findfirst("j", chaos)) -> typeof $(typeof(findfirst("j", chaos)))")

A = [1 4; 2 2]
println(A)
println(findfirst(isequal(4), A))
println(findall(x -> x>=2, A))

println(findall("j", chaos))
[matches = "i" for matches in findall("j", chaos)]

println(repeat(chaos, 10))

smart_join = join(["test", "test", "test", "test"], ",", " and ")
println(smart_join)

println(length(chaos))

# RegExp
# https://docs.julialang.org/en/v1/manual/strings/#man-regex-literals
# https://regex101.com
re = r"[0-9]"
source = "aaaa1aaaa2aaaa3"

println("$re -> $(typeof(re))")
# test for match
println(occursin(r"\s+", chaos))

# get matches
matches = eachmatch(re, source)
# https://docs.julialang.org/en/v1/base/strings/#Base.RegexMatch
for match in matches
    println("$match")
end
