def ile_dzielnikow (n)
  ile = 0
  i = 1
  while i * i <= n
      if n % i == 0
        ile += 2
      end
    i += 1
  end
  if i * i == n
    ile -= 1
  end
  ile
end

a = 3
b = 3

while true
  if ile_dzielnikow(b) > 500
    break
  end
  b += a
  a += 1
end

p b
