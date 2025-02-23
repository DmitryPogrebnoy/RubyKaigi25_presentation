def filter_array(array, number)
  new_array = []
  array.each do |element|
    if element < number
      new_array << element
    end
  end
  new_array
end

filter_array([1,2,3,4,5,6,7,8,9], 5)





