
wynik = 1
i = 1
arr = []
while i <= 500
  n = 2*i
  4.times do |j|
    wynik += n
     arr << wynik
  end
  i += 1
end

wynik = arr.reduce :+
p wynik + 1
