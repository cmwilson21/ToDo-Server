require 'rails_helper'

RSpec.describe Todo, type: :model do

  it "exist" do
    expect {Todo}.to_not raise_error
  end


  context "has reader and writer" do
    it "can read and write a task" do
      todo = Todo.new
      todo.task = "Buy milk"
      expect todo.task == "Buy milk"
    end

    it "can read and write a priority" do
      todo = Todo.new
      todo.priority = 2
      expect todo.priority == 2
    end
  end

  context "storing task objects" do
    before(:each) do
      @turtle = Todo.create(task: "Buy turtle", priority: 1)
      @groceries = Todo.create(task: "Buy groceries", priority: 2)
    end

    it ".all returns an array of all todos" do
      expect(Todo.all).to eq([@turtle, @groceries])
    end

    it "#save saves the todo object in the @@all array" do
      @turtle.save
      @groceries.save
      expect(Todo.all).to eq([@turtle, @groceries])
    end

  end
    
    it "can be initialized" do
      expect {Todo.new(task: "Buy milk", priority: 1)}.to_not raise_error
    end

end