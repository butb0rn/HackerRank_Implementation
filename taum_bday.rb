def taum
  b,w = gets.strip().split(' ').map(&:to_i)
  x,y,z = gets.strip().split(' ').map(&:to_i)
  if x <= y
    puts (x + z) < y ? ((b * x) + (x + z) * w ) : (b * x + w * y)
  else
    puts (y + z) < x ? ((w * y) + (y + z) * b ) : (b * x + w * y)
  end
end
t = gets.to_i
t.times { taum }
