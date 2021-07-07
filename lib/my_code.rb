# Your Code Here
def my_own_map(array)
  yield
end

  array.map{|element| element * -1}
  array.map{|element| element * 2}
  

def map_original(dune)
  return dune
end

def map_double(array)
  new_array = array.map{|element| element * 2}
  return new_array
end

def map_squared(array)
  new_array = array.map{|element| element * element}
  return new_array
end