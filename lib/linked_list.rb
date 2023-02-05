class LinkedList
  attr_accessor :head, :count, :current_node

  def initialize
    @head = head
    @count = 0
    @current_node = current_node
    
  end

  def append(data)
    @head = Node.new(data)
    unless @count == 0
      @head.next_node = Node.new(data)
      @current_node = @head.next_node
    end
    @count += 1
    data
  end

  def to_string
    to_string = ""
    to_string << @head.data 
    to_string
  end
end