# 17.07.2016
a = ""
i = 0
while a.size <= 1_000_000
  a << i.to_s
  i += 1
end

puts [a[1], a[10], a[100], a[1_000], a[10_000], a[100_000], a[1_000_000]].map { |e| e.to_i }.reduce :*
