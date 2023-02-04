class LinkedList
  attr_reader :head, :count

  def initialize
    @head = head
    @count = 0
  end

  def append(data)
    node = Node.new(data)
    @count += 1
    @head = node 
    node.data
  end

  def to_string
    @head.data
  end
end