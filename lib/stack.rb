class Stack
  def initialize
    @buffer = []
  end

  def push(value)
    @buffer.push value
    self
  end

  def pop
    @buffer.delete_at(@buffer.length - 1)
  end

  def length
    @buffer.length
  end

  def empty?
    @buffer.length.zero?
  end

  def clear
    @buffer = []
    self
  end
end
