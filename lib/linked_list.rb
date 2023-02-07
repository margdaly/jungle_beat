require './lib/node'

class LinkedList
  attr_accessor :head, :count, :current_node

  def initialize
    @head = head
    @count = 0
    @current_node = current_node
   
    
  end

  def append(data)
    if @count == 0
      @head = Node.new(data)
    elsif @head.data != nil && @head.next_node == nil
      @head.next_node = Node.new(data)
      @current_node = @head.next_node
    else 
      @current_node.next_node = Node.new(data)
      @current_node = @current_node.next_node
    end
    @count += 1
    data
  end

  def to_string
    to_string = ""
    if @count == 1 || @count == 0
      to_string << @head.data << " "
    else current_node = @head
      to_string << current_node.data << " "
      while current_node.next_node != nil
        current_node = current_node.next_node
        to_string << current_node.data << " "
      end
    end
    to_string.chop
  end

  def prepend(data)
    @count += 1
    if @head.data == nil
       @head = Node.new(data)
       current_node = @head
    else @head.data != nil
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
    end
    @head.data
  end

  def insert(index, data)
    current_node = @head
    previous = nil
    
    index.times do
      previous = current_node
    current_node = current_node.next_node
    end
    new_node = Node.new(data)
    if @count == 0
      @head = new_node
    else
      new_node.next_node = current_node
      previous.next_node = new_node 
    end
    new_node.data
  end

  def find(index, amount)
    sounds = []
    current_node = @head 
    index.times do 
      current_node = current_node.next_node
    end
    amount.times do 
      sounds << current_node.data
      current_node = current_node.next_node 
    end
    sounds.join(" ")
  end
end