class Numeric
  def closest_fibonacci
    WinningFib.new(self).closest
  end
end

class WinningFib
  FIRST_SEED = 0
  SECOND_SEED = 1
  
  def initialize(limit)
    @first_num = FIRST_SEED
    @second_num = SECOND_SEED
    @limit = limit
  end

  def closest
    next_num = @first_num + @second_num
    return @second_num if next_num >= @limit

    @first_num = @second_num
    @second_num = next_num
    closest
  end
end
