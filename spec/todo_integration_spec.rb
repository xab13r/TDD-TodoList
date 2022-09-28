require 'todo_list'


RSpec.describe "ToDo List Integration" do
	context "when an item is added" do
		it "is added to the incomplete list" do
			todo_list = TodoList.new
			todo = Todo.new("this is a to do")
			todo_list.add(todo)
			expect(todo_list.incomplete).to eq [todo]
			expect(todo_list.complete).to eq []
		end
	end

	context "with 2 todo's in the list" do
		it "marking one complete moves it to the complete list" do
			todo_list = TodoList.new
			todo1 = Todo.new("this is a to do")
			todo2 = Todo.new("this is another to do")
			todo_list.add(todo1)
			todo_list.add(todo2)
			todo1.mark_done!
			expect(todo_list.incomplete).to eq [todo2]
			expect(todo_list.complete).to eq [todo1]
		end
	end

	context "with 2 todo's in the list" do
		it "calling give_up! will move both to the complete list" do
			todo_list = TodoList.new
			todo1 = Todo.new("this is a to do")
			todo2 = Todo.new("this is another to do")
			todo_list.add(todo1)
			todo_list.add(todo2)
			todo_list.give_up!
			expect(todo_list.incomplete).to eq []
			expect(todo_list.complete).to eq [todo1, todo2]
		end
	end

	context "with 2 todo's in the list" do
		it "marking one complete moves it to the complete list" do
			todo_list = TodoList.new
			todo1 = Todo.new("this is a to do")
			todo2 = Todo.new("this is another to do")
			todo_list.add(todo1)
			todo_list.add(todo2)
			todo1.mark_done!
			expect(todo_list.incomplete).to eq [todo2]
			expect(todo_list.complete).to eq [todo1]
		end
	end
end
