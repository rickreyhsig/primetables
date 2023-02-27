module Services
  class SpacedString

    CELL_SIZE = 6
    def process(val)
      raise ArgumentError unless val
      val_length = (val).to_s.length
      space_length = (CELL_SIZE-val_length)
      str = ''
      space_length.times { str << ' ' }
      str << "#{val} "
      return "|#{str}"
    end
  end
end
