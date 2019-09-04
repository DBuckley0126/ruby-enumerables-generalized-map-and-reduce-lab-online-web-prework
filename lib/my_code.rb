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

def reduce(source_array, starting_point=nil)
  
  if starting_point
    i = 0
    output = starting_point
  else
    i = 1
    output = source_array[0]
  end
      
    while i < source_array.length do
      output = yield(output, source_array[i])
      i += 1
    end
    return output  
end

# reduce([1,2,3,4]) {|memo, n| memo && n}
