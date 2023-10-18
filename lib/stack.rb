
class Stack
  def initialize(limit = nil)
    @stack = [] 
    @limit = limit
  end

  def push(item)
    if @limit.nil? || @stack.length < @limit
    @stack.push(item) 
    else 
      raise "Stack Overflow"
    end
  end

  def pop
    @stack.pop 
  end

  def peek
    @stack.last 
  end

  def empty?
    @stack.empty? 
  end

  def size
    @stack.length 
  end

  def full?
    if @limit.nil?
      false
    else
      @stack.length >= @limit
    end
  end

  def search(value)
    index = @stack.rindex(value)
    if index
      distance = @stack.length - index - 1
      return distance
    else
      return -1
  end
    
  
  end
end


