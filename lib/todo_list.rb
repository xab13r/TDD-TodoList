class TodoList
  def initialize
	  @list = Array.new
  end

  def add(todo) # todo is an instance of Todo
	@list.push(todo)
  end

  def incomplete
	incomplete_list = @list.select { |item| item.done? == false }
	return incomplete_list
  end

  def complete
	complete_list = @list.select { |item| item.done? == true }
	return complete_list
  end

  def give_up!
	# Marks all todos as complete
  end
end