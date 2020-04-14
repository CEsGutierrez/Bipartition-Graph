
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

## NOTE: this method does not work for the test on LN 52. I considered alternating the rooms between which the elements are placed, which would work as a band-aid but not solve the problem if the test set were to change. 

## Below is another attempt to make the decision-making process an algorithm and it became even more messy. 


# def possible_bipartition(set_array)
#   if set_array == []
#     return true
#   end

#   i = 0

#   reference_hash = {}

#   until i == set_array.length do
#     reference_hash[i] = set_array[i]
#     i += 1
#   end

#   sorted = reference_hash.sort_by {|identity, dislikes| dislikes}

#   puts "#{sorted}"

#   sorted_too = sorted.sort_by{|groups| groups[1].length}.reverse

#   puts "#{sorted_too}"

# end