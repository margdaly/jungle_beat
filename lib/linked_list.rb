class LinkedList
  attr_reader :data, :next_node, :head

  def initialize(data = nil)
    @data = data
    @next_node = nil
    @head = nil
  end

end