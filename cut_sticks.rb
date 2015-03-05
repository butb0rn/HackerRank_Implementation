def cut_sticks
  count = gets.to_i
  sticks = gets.split(' ').map(&:to_i)
  while sticks.length > 0 do
    puts count
    min = sticks.min
    sticks.map!{|x| x -= min}
    count -= sticks.count(0)
    sticks.delete(0)
  end
end
cut_sticks()
