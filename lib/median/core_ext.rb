class Array
  def median
      array = self.compact

      # self.compact.blank? does not detect [nil]
      return nil if array.compact.blank? || array.map(&:class).uniq == [NilClass]
      raise if array.map {|v| v.is_a?(Integer) or v.is_a?(Float)}.uniq != [true]
      array_count = array.count
      if array_count.even?
        even_median_index = (array_count / 2)
        return array.sort[even_median_index-1..even_median_index].sum.fdiv(2)
      else
        return array.sort[array_count / 2]
      end
  end
end
