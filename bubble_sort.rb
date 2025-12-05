def bubble_sort(unsorted_list)
  working_list = unsorted_list.dup

  begin
    changed = false
    working_list.each_with_index do |value, idx|
      
      unless idx.eql? working_list.length - 1
        if value > working_list[idx + 1]
          working_list[idx] = working_list[idx + 1]
          working_list[idx + 1] = value
          changed = true
        end
      end
    end
  end until !changed
  working_list
end

p bubble_sort([3,2,5,4])