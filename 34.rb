
def silnia (n)
  if n == 0
    return 1
  end
  (1..n).reduce :*
end

tab = (0..9).map { |e| silnia e }

maksymalna = tab.reduce :+

i = 9

tab2 = []

while i <= maksymalna
  s = 0
  i.to_s.each_byte { |e| s += silnia(e - 0x30)}
  if s == i
    tab2.push i
  end
  i += 1
end

p tab2.reduce :+
