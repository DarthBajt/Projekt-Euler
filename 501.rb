def ile_dzielnikow (n)
  (1..n).select {|k| n % k == 0 }.size
end

require "prime"

y = 500500

liczba = 1

tab  = Prime.first(y)

tab.each_with_index {|v, i| puts "#{i}: #{v}"}
