def my_map!(my_array, &block)
  new_array = Array.new
  my_array.each do |element|
    new_array.push(yield(element))
  
  return new_array
end

numbers = [1,2,3]
double = Proc.new {|num| num * 2}
my_map!(numbers, &double)