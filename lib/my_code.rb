def my_map(source_array)
    ary = []

    self.each do |elem|
      ary << yield(elem)
    end

    ary
  end


source_array.my_map {|n| n * -1}
source_array.my_map {|n| n}
source_array.my_map {|n| n * 2}
source_array.my_map {|n| n * n}

def reduce(source_array)

end

source_array.reduce(0) {|memo, n| memo + n}
source_array.reduce(0) {|memo, n| memo + n}
source_array.reduce(0) {|memo, n| memo && n}
source_array.reduce(0) {|memo, n| memo || n}
