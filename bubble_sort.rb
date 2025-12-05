def bubble_sort(unsorted_list)
  working_list = unsorted_list.dup

  begin
    unchanged = true
    last_index = unsorted_list.length - 1

    working_list.each_with_index do |value, idx|
      
      0.upto(last_index - 1) do |i|
        next unless working_list[i] > working_list[i + 1]
        working_list[i], working_list[i + 1] = working_list[i + 1], working_list[i]
        unchanged = false
      end
    end
  end until unchanged
  working_list
end

p bubble_sort([3,2,5,4])