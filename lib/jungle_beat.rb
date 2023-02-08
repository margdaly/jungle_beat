class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def count
    list.count
  end

  def append(data)
    sounds = data.split
    sounds.each do |sound|
      list.append(sound)
    end
    sounds.join(" ") 
  end

  def play
    `say -r 500 -v Alex #{@list.to_string}`
  end
end