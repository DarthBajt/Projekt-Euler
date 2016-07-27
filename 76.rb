
a = [0] * 101
a[0] = 1
i = 1
while i <= 99
  j = i
  while j <= 100
    a[j] += a[j-i]
    j+=1
  end
  i+=1
end

p a[100]
