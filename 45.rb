# 17.07.2016

hm = {}

def t (n)
  n * (n + 1) / 2
end

def p (n)
  n * (3 * n - 1) / 2
end

def h (n)
  n * (2 * n - 1)
end

N = 100000

(100..N).each do |a|
  hm[t(a)] = 1
end

(100..N).each do |a|
  pp = p(a)
  if hm.has_key?(pp)
    hm[pp] += 1
  end
end

(100..N).each do |a|
  hh = h(a)
  if hm.has_key?(hh)
    puts hh if hm[hh] == 2
  end
end
