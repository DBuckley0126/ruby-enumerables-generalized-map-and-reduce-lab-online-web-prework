#map

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end


#reduce

#def reduce_to_total(source_array, starting_point=0)
 # total = starting_point
 # i = 0
 # while i < source_array.length do
 #   total += source_array[i]
 #   i += 1
 # end
 # return total
#end

def reduce(source_array, starting_point=0)
  total = starting_point
  i = 0
  while i < source_array.length do
    yield(total)
    i += 1
  end
  return total
end