
potegi = [0, 1, 32, 243, 1024, 3125, 7776, 16807, 32768, 59049]

suma = 0
i = 2

while i <= 999999
  s = i.to_s.chars.map {|n| potegi[n.to_i]}.reduce :+
  if s == i
    suma += i
  end
  i += 1
end

p suma
