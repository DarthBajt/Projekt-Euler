# 18.07.2016

def totient (n)
  (1...n).reject { |e|  n % e == 0}.size + 1
end

n = 2

while n <= 10
  lol = n.fdiv(totient(n))
  puts lol
  n += 1
end
