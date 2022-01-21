module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for element in self
      yield element, index
      index += 1
    end
  end

  def my_select
    arr = []
    for element in self
      arr << element if yield(element)
    end
    return arr
  end

  def my_all?
    count = 0
    for element in self
      count += 1 if yield(element)
    end
    return count == self.length ? true : false
  end

  def my_any?
    for element in self
      return true if yield(element)
    end
    return false
  end

  def my_none?
    count = 0
    for element in self
      count += 1 if yield(element)
    end
    return count == 0 ? true : false
  end

  def my_count
    count = 0
    if block_given?
      for element in self
        count += 1 if yield(element)
      end
      return count
    else
      return self.length
    end
  end

  def my_map
    arr = []
    for element in self
      arr << yield(element)
    end
    return arr
  end

  def my_inject(store)
    for element in self
      store = yield(store, element)
    end
    return store
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self
      yield element
    end
  end
end
