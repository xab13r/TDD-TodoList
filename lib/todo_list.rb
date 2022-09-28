class TodoList
  def initialize
	  @list = Array.new
  end

  def add(todo) # todo is an instance of Todo
	@list.push(todo)
  end

  def incomplete
	return @list.select { |item| item.done? == false }
  end

  def complete
	return @list.select { |item| item.done? == true }
  end

  def give_up!
	  @list.each{|todo| todo.mark_done!}
  end
end
