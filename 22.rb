tab = File.open("p022_names.txt").read.split(',').map { |e| e.gsub "\"", "" }.sort
tab2 = []
sum = 0
tab.each do |v|
  s = 0
  v.each_byte{ |e| s += (e - 64)}
  tab2.push(s)
end

tab2.each.with_index(1){|v, i| sum += (v*i)}
p sum
