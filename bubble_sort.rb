def bubble_sort(unsorted_list)
  working_list = unsorted_list.dup

  begin
    unchanged = true
    working_list.each_with_index do |value, idx|
      
      if idx != working_list.length - 1
        if value > working_list[idx + 1]
          working_list[idx] = working_list[idx + 1]
          working_list[idx + 1] = value
          unchanged = false
        end
      end
    end
  end until unchanged
  working_list
end

p bubble_sort([3,2,5,4])