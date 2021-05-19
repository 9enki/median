class Array
  def median
      # self.compact.blank? does not detect [nil]
      return nil if self.compact.blank? || self.map(&:class).uniq == [NilClass]
      raise if self.map {|v| v.is_a?(Integer) or v.is_a?(Float)}.uniq != [true]
      self_count = self.count
      if self_count.even?
        even_median_index = (self_count / 2)
        return self.sort[even_median_index-1..even_median_index].sum.fdiv(2)
      else
        return self.sort[self_count / 2]
      end
  end
end
