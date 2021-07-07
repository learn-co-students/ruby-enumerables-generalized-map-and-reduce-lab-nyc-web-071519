def map(array)
  new_array = []
  i = 0 
  while i < array.length
  new_array << yield(array[i])
  i += 1
  end
  return new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    running_total = starting_point
    i = 0
  else
    running_total = source_array[0]
    i = 1
  end
    while i < source_array.length
    running_total = yield(running_total, source_array[i])
    i += 1
    end
  return running_total
end