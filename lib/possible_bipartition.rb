
def possible_bipartition(set_array)
  
  if set_array == []
    return true
  end
  
  room_a = []
  room_b = []
  
  room_charming = []
  
  length = set_array.length
  
  i = 0
  
  until i == length do
    if set_array[i] == []
      room_charming.push(i)
      i += 1
    else
      set_array[i].each do |dislike|
        if !room_a.include?(i)
          room_a.push(dislike)
        elsif room_b.include?(i)
          return false
        else
          room_b.push(dislike)
        end
      end
      i += 1
    end
  end
  
  room_a.push(room_charming)
  room_a.flatten!
  
  return true
  
end
