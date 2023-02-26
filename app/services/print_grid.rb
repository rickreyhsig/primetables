module Services
  class PrintGrid
    def process(_n)
      raise ArgumentError unless _n
      raise 'N should be at least 1' if _n < 1
      return '|       |' if _n == 1
    end

    private
  end
end