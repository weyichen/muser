class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :priority
      t.string :description
      t.boolean :completed
      t.belongs_to :tasklist

      t.timestamps
    end
    add_index :todos, :tasklist_id
  end
end
