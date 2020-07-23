require 'byebug'

class Array
  def merge_sort(&prc) # Procifies the block
    return self if self.count <= 1 # `self` === the Array instance (receiver of the method)
    # debugger
    middle = self.length / 2
    left = self[0...middle]
    right = self[middle..-1]

    sorted_left = left.merge_sort(&prc) # merge_sort should be called *on* each half of the array instead of taking it as an arg
                                        # also need to pass a block to the recursive call (use `&` to blockify the proc)
    sorted_right = right.merge_sort(&prc)
    Array.merge(sorted_left, sorted_right, prc) # Array::merge is a class method and should be called as such
                                                # `prc` is a proc (it was procified on line 4)
  end

  private # all methods below this line are "private" methods (stay tuned for more info next week)
  def self.merge(left, right, prc) # here, `self` === the Array class, `prc` is a proc
    prc ||= Proc.new { |a, b| a <=> b } # define a default proc so `merge_sort` can handle sorting w/o a passed-in block
    result = []
    until left.empty? || right.empty?
      # debugger
      if prc.call(left[0], right[0]) <= 0 # `prc` will be `nil` if no proc passed in (which can happen if you forget to pass block down through each recursive call in lines 11-12)
        # debugger
        result += [left.shift]
      else
        # debugger
        result += [right.shift]
      end
    end

    result + left + right
  end
end

array = [5, 4, 300, 25, 21, 26, 24]
p array.merge_sort
# p array.merge_sort { |a, b| a * b }

# p array.merge_sort { |a, b| a <=> b }