class DropTables < ActiveRecord::Migration
  def up
    drop_table :musers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
