# frozen_string_literal: true

def bubble_sort(unsorted_list)
  working_list = unsorted_list.dup
  last_index = working_list.length - 1

  loop do
    unchanged = true
    0.upto(last_index - 1) do |i|
      next unless working_list[i] > working_list[i + 1]

      working_list[i], working_list[i + 1] = working_list[i + 1], working_list[i]
      unchanged = false
    end
    last_index -= 1
    break if unchanged
  end
  working_list
end
