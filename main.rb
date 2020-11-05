# frozen_string_literal: true

module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    array = self
    counter = 0
    loop do
      yield arr[counter]
      counter += 1
      break if counter == arr.length
    end
  end
  def my_each_with_index
    return to_enum(:my_each) unless block_given?
    arr = self
    counter = 0
    loop do
      yield(arr[counter], counter)
      counter += 1
      break if counter == arr.length
    end
  end
  
  def my_select
    return to_enum(:my_select) unless block_given?
    
    array = self
    counter = 0
    selected_elements = []
    until counter == array.length
    selected_elements << array[counter] if yield(array[counter])
    counter += 1
    end
    p selected_elements
    end
end
