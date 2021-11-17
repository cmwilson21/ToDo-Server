class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.integer :upvote
      t.boolean :completed
      t.string :task
      t.string :category
      t.integer :priority

      t.timestamps
    end
  end
end
