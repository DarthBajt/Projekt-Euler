# 17.07.2016

def c (n, r)
  ret = 1

  (1..r).each do |i|
    ret = ret * (n - i + 1) / i
  end
  ret
end

a = 0

(1..100).each do |n|
  (1..n).each do |k|
    a += 1 if c(n, k) > 1_000_000
  end
end

puts a
