class MyStack

  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(arg)
    @store.push(arg)
  end

  def peek
    @store.last
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

end

class StackQueue

  def initialize
    @entry_stack = MyStack.new
    @exit_stack = MyStack.new
  end

  def enqueue
    @entry_stack.push
  end

  def dequeue
    if !@exit_stack.empty?
      @exit_stack.pop
    else
      until @entry_stack.empty?
        next_object = @entry_stack.pop
        @exit_stack.push(next_object)
      end
      @exit_stack.pop
    end


  end

  def size
    @entry_stack.size + @exit_stack.size
  end

  def empty?
    @entry_stack.empty? && @exit_stack.empty?
  end

end
