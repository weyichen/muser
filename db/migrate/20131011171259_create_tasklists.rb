class CreateTasklists < ActiveRecord::Migration
  def change
    drop_table :tasklists
    create_table :tasklists do |t|
      t.string :title
      t.belongs_to :user

      t.timestamps
    end
    add_index :tasklists, :user_id
  end
end
