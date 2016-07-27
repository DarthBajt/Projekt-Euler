require "prime"



i = 1000

d1 = Prime.prime_division(i)
d2 = Prime.prime_division(i + 1)
d3 = Prime.prime_division(i + 2)
d4 = Prime.prime_division(i + 3)
i += 3
while i < 999999
  d1 = d2
  d2 = d3
  d3 = d4
  d4 = Prime.prime_division(i + 3)
  if d1.size == 4 and d2.size == 4 and d3.size == 4 and d4.size == 4
    p d1
    p d2
    p d3
    p d4
    p [i, i + 1, i + 2, i + 3]
  end
  i += 1
end
