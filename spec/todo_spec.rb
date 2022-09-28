require 'todo'

RSpec.describe Todo do
	it "creates a task" do
		todo = Todo.new("do this")
		expect(todo.task).to eq "do this"
	end

	context "a new task will be created as incomplete" do
		it "return false" do
			todo = Todo.new("do this")
			expect(todo.done?).to eq false
		end
	end
end