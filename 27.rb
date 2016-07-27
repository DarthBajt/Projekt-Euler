require "prime"

amax = 0
bmax = 0
nmax = 0

a = -999

while a < 1000
  b = -999
  while b < 1000
    n = 0
    while Prime.prime?((n*n + a*n + b).abs)
      n+=1
    end
    if n > nmax
      nmax = n
      bmax = b
      amax = a
    end
    b+=1
  end
  a+=1
end

puts amax*bmax
