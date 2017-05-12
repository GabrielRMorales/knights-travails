class Node
attr_accessor :data, :next_move

def initialize(data=nil, next_move=nil)
@data=data
@next_move

end

end

class Knight 
attr_accessor :min_move_array

def initialize
@min_move_array=[]
@tree=Node.new([1,2])
end

#def knight_moves(start, finish)
#	tree=Node.new(start)
#	tree.move(start, 2,1)
  
#end

def move(x,y)
  node=@tree
  #temparray will be used later to check pre-existing node points
  temp_array=[]
  	#while loop should stop if node.data==finish
  	#consider removing while loop from move and making move method
  	#just do one move. Create another method that makes mutliple
  	#move-s and changes the x y values
	while @min_move_array.length < 4 do
	#if its <4, this will be infinite loop because the array only
	#gets another value if its less than 9, but it will always add to
	#more than 9 if you do it 4 times
	puts "Length: #{@min_move_array.length}"
	check_one=node.data[0]+x
	check_two=node.data[1]+y
	  #check if temparray already contains [check_one,check_two]
  	if check_one<9 && check_two<9
  	node.next_move=Node.new([node.data[0]+x,node.data[1]+y])
  	node=node.next_move
  	@min_move_array << node.data
  	temp_array << node.data
  	end
	puts "#{node.data}"
	end
	#@arr_comparison(@min_move_array, temp_array)
	@min_move_array
end

def arr_comparison(arr1, arr2)
  if arr2.length<arr1.length
    arr1=arr2.clone
  end
end

end

knight=Knight.new
knight.move(2,1)