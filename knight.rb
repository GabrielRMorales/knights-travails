class Node
attr_accessor :data, :ptmo, :popt, :mtmo, :min_move_array, :counter, :finish
def initialize(data=nil, finish=finish)
@data=data
@ptmo
@popt
@mtmo
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
	if node.data[0]-2>0 && node.data[1]-1>0
	node.mtmo=Node.new([node.data[0]-2,node.data[1]-1])
	temp=node.mtmo
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
puts knight.counter



def comparr(arr1, arr2)
  if arr2.length<arr1.length
    arr1=arr2.clone
  end
end


def old_move(@tree)
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

def move
  @tree
  @counter=0
  iterate
  puts @min_move_array.length
  @min_move_array

end
 
def iterate
  for i in 0..2  	
	#puts "#{@moves[i][0]} and #{@moves[i][1]}"
	#puts "#{@tree.data[0]} and #{@tree.data[1]}"
	checkone=@tree.data[0]+@moves[i][0]
	checktwo=@tree.data[1]+@moves[i][1]	
	#if @counter<3
	  	if checkone<9 && checktwo<9
	  		if @temp_array.include?([checkone, checktwo])==false  	
	  			temp=@tree.next_move		
	  			temp=Node.new([checkone, checktwo])
	  			@temp_array << temp.data
	  			@min_move_array << temp.data
	  		end
	  	end
	#end
  	#check
  end
  iterate
end