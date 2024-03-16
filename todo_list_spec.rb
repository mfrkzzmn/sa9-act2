require 'rspec'
require_relative 'todo_list'

RSpec.describe TodoList do
  let(:todo_list) { TodoList.new }
  let(:todo) { "Learn RSpec" }

  describe "#add" do
    it "adds a todo to the list" do
      expect { todo_list.add(todo) }.to change { todo_list.todos.count }.by(1)
      expect(todo_list.todos).to include(todo)
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list.add(todo)
      expect { todo_list.remove(todo) }.to change { todo_list.todos.count }.by(-1)
      expect(todo_list.todos).not_to include(todo)
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list.add(todo)
      expect(todo_list.todos).to eq([todo])
      another_todo = "Practice coding"
      todo_list.add(another_todo)
      expect(todo_list.todos).to eq([todo, another_todo])
    end
  end
end