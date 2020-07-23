def bsearch(nums, target)
  # nil if not found; can't find anything in an empty array
  return nil if nums.empty?

  probe_index = nums.length / 2
  case target <=> nums[probe_index]
  when -1
    # search in left
    bsearch(nums.take(probe_index), target)
  when 0
    probe_index # found it!
  when 1
    # search in the right; don't forget that the right subarray starts
    # at `probe_index + 1`, so we need to offset by that amount.
    sub_answer = bsearch(nums.drop(probe_index + 1), target)
    sub_answer.nil? ? nil : (probe_index + 1) + sub_answer
  end

  # Note that the array size is always decreasing through each
  # recursive call, so we'll either find the item, or eventually end
  # up with an empty array.
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

class Array
  def quick_sort(&prc)
    return self if self.length < 2

    prc ||= Proc.new { |a, b| a <=> b  }
    # prc = prc || Proc.new { |a, b| a <=> b  }

    pivot = self.first
    rest = self.drop(1)

    left = rest.select { |el| prc.call(el, pivot) <= 0 }
    right = rest.select { |el| prc.call(el, pivot) == 1 }

    left.quick_sort(&prc) + [pivot] + right.quick_sort(&prc)
  end
end


# array = [5, 4, 300, 25, 21, 26, 24]

# p array.quick_sort 

# Which sorting algos to know for test? --> they're listed in the practice assessment generator