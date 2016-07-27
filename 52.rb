
found = false
x = 1

while not found
  a = x.to_s.scan(/./).sort.to_s
  b = (x*2).to_s.scan(/./).sort.to_s
  if a == b
    b = (x*3).to_s.scan(/./).sort.to_s
    if a == b
      b = (x*4).to_s.scan(/./).sort.to_s
      if a == b
        b = (x*5).to_s.scan(/./).sort.to_s
        if a == b
          b = (x*6).to_s.scan(/./).sort.to_s
          if a == b
            found = true
          end
        end
      end
    end
  end
  x += 1
end

p x-1
