class item 								# This is a class called item
  def initialize(item_name, quantity)	# 
    @item_name = item_name				# THis is an instance variable called @item_name
    @quantity = quantity				# THis is an instance variable called @quantity
    # supplier = "Acme Corp" 			# This is a local variable and needs the @ to make it an instance variable
    @description = description			# This is an instance  variable called @description 
    @colour = colour					# This is an instance variable called @colour
  end
  
  def show								# This is a method called show
    puts @item_name						# This method will print item_name
    puts @quantity						# This method will also print quantity
    # puts supplier						# This puts attempts to print the supplier local variable.
  end
end



Item.new("tv",1).show					# Item.new - creates a new object, an instance of class item.
Item.new("fridge",1).show				# Item.new - creates a new object, an instance of class item.  
Item.new("Microwave",2).show			# Item.new - creates a new object, an instance of class item.
Item.new("Table",10).show				# Item.new - creates a new object, an instance of class item.