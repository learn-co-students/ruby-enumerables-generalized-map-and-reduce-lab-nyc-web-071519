def map(array)
  new = []
  i = 0 
  while i < array.length 
  new << (yield(array[i]))
  i += 1 
end
return new
end

def reduce(array, starting_point)
  if starting_point 
    current_total = starting_point
    i = 0 
  else
    current_total = array[0]
    i = 1 
    while i < array.length 
    current_total = yield (current_total, array[i])
    i += 1 
  end
  current_total
end