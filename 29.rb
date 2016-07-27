# 17.07.2016

hm = {}
(2..100).each { |a| (2..100).each {|b| hm[a**b] = 1}}
puts hm.size
