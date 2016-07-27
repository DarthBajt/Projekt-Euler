require "prime"

primes = Prime.first(10_000);

a = []
i = 4;

s = 0

while i < 10_000

  l = primes[i].to_s.length


  for j in primes[i].to_s

  end

  if s == 11
    break
  end
end

p a.reduce :+
