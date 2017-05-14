class Node
attr_accessor :data, :ptpo, :popt, :ptmo, :min_move_array, :counter, :finish
def initialize(data=nil, finish=finish)
@data=data
@ptpo
@popt
@ptmo
#@min_move_array=[]
#@temp_array=[]
@counter=0
#@finish=finish
#@tree=Node.new([3,3])
#@moves=[[2,-1],[1,2],[2,1]]
end

def mover(node)
	@counter+=1
	return knight if node.data==@finish

	return if node.data[0]>9 || node.data[1]>9
	if node.data[0]+2<9 && node.data[1]+1<9
	node.ptpo=Node.new([node.data[0]+2,node.data[1]+1])
	temp=node.ptpo
	mover(temp)
	end
	if node.data[0]+1<9 && node.data[1]+2<9
	node.popt=Node.new([node.data[0]+1,node.data[1]+2])
	temp=node.popt
	mover(temp)
	end
	if node.data[0]+2<9 && node.data[1]-1>0
	node.ptmo=Node.new([node.data[0]+2,node.data[1]-1])
	temp=node.ptmo
	mover(temp)
	end
end

end

knight=Node.new([3,3], [4,3])
knight.mover(knight)
knight.counter
