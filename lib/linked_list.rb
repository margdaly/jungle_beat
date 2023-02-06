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
      to_string << @head.data
    else @current_node = @head
      to_string << @current_node.data << " "
      while @current_node.next_node != nil
        @current_node = @current_node.next_node
        to_string << @current_node.data
      end
    end
    to_string
  end


    #elsif @head.next_node != nil
     #to_string << @

  # def to_string
  #   to_string = ""
  #   begin
  #     to_string << @head.data 
  #     to_string << " " << @head.next_node.data
  #     to_string << " " << @current_node.data
  #   end until @current_node.data != nil && @current_node.next_node == nil
  #   to_string
  # end
end