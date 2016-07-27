
def sum_of_digits (n)
  ret = 0
  while n > 0
    ret += n % 10
    n /= 10
  end
  ret
end

i = 2
j = 2
max = 0
max_num = 0

while i < 100
  j = 2
  while j < 100
    num = i**j
    sum = sum_of_digits(num)
    if sum > max
      max = sum
      max_num = num
    end
    j+=1
  end
  i+=1
end

p max
p max_num
