class Node

attr_accessor :data, :plustwo, :plusone
def initialize(data="nil", plustwo=nil, plusone=nil)
@data=data
@plustwo=plustwo
@plusone=plusone
#@previous=previous
end


end



def knight_moves(start, finish)
	tree=Node.new(start)
  spread(tree)
end

def spread(node)
	return if node.data[0]>5
	node.plustwo=Node.new([node.data[0]+2,node.data[1]+1])
	temp_two=node.plustwo
	puts "Plus two"
	puts "Node data[0]: #{temp_two.data[0]}"
	puts "Node data[1]: #{temp_two.data[1]}"
	spread(temp_two)
	node.plusone=Node.new([node.data[0]+1,node.data[1]+2])
	temp_one=node.plusone
	puts "Plus one"
	puts "Node data[0]: #{temp_one.data[0]}"
	puts "Node data[1]: #{temp_one.data[1]}"
	spread(temp_one)
	node
end

knight_moves([1,2],[4,3])