require "prime"

a = Prime.first(100_000)

i = 0

b = Array.new(100_000)

b[0] = 0

while i < 100_000
  b[i+1] = b[i] + a[i]
  i+=1
end

puts b[21]
