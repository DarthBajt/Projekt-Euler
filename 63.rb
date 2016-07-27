# 18.07.2016

c = 0

(1..20).each do |a|
  (1..1000).each do |e|
    if (a**e).to_s.size == e
      puts (a**e)
      c += 1
      end
  end
end

puts c
