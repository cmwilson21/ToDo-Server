class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.integer :upvote
      t.boolean :completed
      t.string :task
      t.string :category
      t.string :priority
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
