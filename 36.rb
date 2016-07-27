def is_palindrome (n)
  n == n.reverse
end

N = 1_000_000
i = 1
sum = 0
while i <= N
  if is_palindrome(i.to_s)
    if is_palindrome(i.to_s(2))
      sum += i
    end
  end
  i += 1
end

p sum
