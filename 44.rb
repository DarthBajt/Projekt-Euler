# 17.07.2016

hm = {}
dhm = {}

def pent (n)
  n * (3 * n - 1) / 2
end

N = 3000

(1..N).each do |a|
  hm[pent(a)] = 1
end

(1..(N-1)).each do |k|
  (0..(k-1)).each do |j|
    sum = hm.keys[k] + hm.keys[j]
    diff = hm.keys[k] - hm.keys[j]
    if hm[sum] == 1 and hm[diff] == 1
      dhm[diff] = 1
    end
  end
end

p dhm.keys.sort
