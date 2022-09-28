require 'todo_list'


RSpec.describe "ToDo List Integration" do
	context "When a new instance is created" do
		it "sets up an empty list" do
			todo_list = TodoList.new
			expect(todo_list.incomplete).to eq []
			expect(todo_list.complete).to eq []
		end
	end

	context "when an item is added" do
		it "is added to the incomplete list" do
			todo_list = TodoList.new
			todo = Todo.new("this is a to do")
			todo_list.add(todo)
			expect(todo_list.incomplete).to eq [todo]
			expect(todo_list.complete).to eq []

		end
	end
end