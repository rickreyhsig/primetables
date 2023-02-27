module Services
  class PrintGrid

    def initialize
      @grid = nil
    end

    def process(_n)
      raise ArgumentError unless _n

      m = 0
      incr = 0
      while(m < _n)
        primes = Services::Primes.new.process(_n+incr)
        m = primes.length
        incr += 1
      end
      @grid = start_grid(primes)
      # byebug
      primes.each {|prime| append_grid(prime, _n, primes) }
      return @grid
    end

    private

    def start_grid(primes)
      grid = "|       "
      primes.each {|prime| grid << "|     #{prime} " }
      grid << "|\n"
      return grid
    end

    def append_grid(val, _n, primes)
      _val = val
      idx = 0
      (_n+1).times do
        # @grid << "|     #{val} "
        @grid << spaced_string(val)
        # p "#{_val}:#{idx}:#{primes[idx]}:_val*primes[idx]" if idx < primes.length
        val = _val*primes[idx] if idx < primes.length
        idx += 1
      end
      # p '----'
      @grid << "|\n"
    end

    def spaced_string(val)
      val_length = (val).to_s.length
      space_length = (6-val_length)
      str = ''
      space_length.times { str << ' ' }
      # str << (val.to_s)
      str << "#{val} "
      # byebug
      return "|#{str}"
    end
  end
end