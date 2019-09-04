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

def reduce(source_array, starting_point)
  i = 0
  
  if starting_point = !nil
    
    output = starting_point
    
    while i < source_array.length do
      output = yield(source_array[i], output)
      i += 1
    end
    
    return output
  else
      
    while i < source_array.length do
      return yield(source_array[i])
      i += 1
    end
  end  
end

# reduce([1,2,3,4]) {|memo, n| memo && n}