require 'rspec'
require './lib/node'

RSpec.describe Node do
  describe 'exists' do
    it 'is an instance of Node' do

      node = Node.new("plop")
      
      expect(node).to be_instance_of(Node)
    end

    it 'has data'do

      node = Node.new("plop")
      
      expect(node.data).to eq("plop")
    end

    it 'has a next node' do
      
      node = Node.new("plop")

      expect(node.next_node).to eq(nil)  
    end
  end
end

