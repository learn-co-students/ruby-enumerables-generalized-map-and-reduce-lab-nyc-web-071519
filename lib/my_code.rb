# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    yield(source_array[i])
    i += 1
  end
  return new
end

map_to_negativize(source_array) do |i|
  source_array[i] * -1
end

def map_to_no_change(source_array)
  source_array
end

def map_to_double(source_array)
  i = 0
  while i < source_array.length
    source_array[i] = source_array[i] * 2
    i += 1
  end
  source_array
end

def map_to_square(source_array)
  i = 0
  while i < source_array.length
    source_array[i] = source_array[i] ** 2
    i += 1
  end
  source_array
end

def reduce_to_total(source_array, starting_point = 0)
  i = 0
  total = 0
  while i < source_array.length
    total += source_array[i]
    i += 1
  end
  total + starting_point
end

def reduce_to_all_true(source_array)
  i = 0
  while i < source_array.length
    if source_array[i] == false
      return false
    end
    i += 1
  end
  true
end

def reduce_to_any_true(source_array)
  i = 0
  while i < source_array.length
    if source_array[i] == true
      return true
    end
    i += 1
  end
  false
end