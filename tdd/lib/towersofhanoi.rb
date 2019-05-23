class TowersOfHanoi
  attr_reader :stacks

  def initialize(size)
    @stacks = [((1..size).to_a.reverse), [], []]
    @size = size

  end

  # def populate_stacks
  #   (1..@size).each { |disk| @stacks.unshift(disk) }
  # end

  def move(start, end_pos)
    @stacks[end_pos].push(@stacks[start].pop)
  end

  def get_input

  end

end