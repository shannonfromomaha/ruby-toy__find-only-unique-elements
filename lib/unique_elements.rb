# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
     count_hash = arr.each_with_object (Hash.new(0)) { |element, counts| counts[element] += 1 }
    new_hash = count_hash.select {|key,value| value == 1}
    answer_arr = new_hash.keys
    return answer_arr
end
