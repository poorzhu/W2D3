
class Array
  def my_uniq
    new_hash = {}
    self.each do |el|
      new_hash[el] = true
    end
    new_hash.keys
  end

  def two_sum
    sums = []

    length.times do |i1|
      length.times do |i2|
        sums << [i1, i2] if i2 > i1 && self[i1] + self[i2] == 0
      end
    end

    sums
  end

  def my_transpose
    raise IndexError if any? { |row| row.length != first.length }

    transposed = []

    each_with_index do |row, x|
      temp = []

      length.times do |y|
        temp << self[y][x]
      end

      transposed << temp
    end

    transposed
  end

  def stock_picker
    stock_differences = Hash.new(0)

    length.times do |buy_date|
      length.times do |sell_date|
        if sell_date > buy_date
          stock_differences[[buy_date, sell_date]] = self[sell_date] - self[buy_date]
        end
      end
    end

    return nil if stock_differences.values.all? { |val| val <= 0 }
    stock_differences.key(stock_differences.values.max)
  end

end

