class AddUsernametoSongs < ActiveRecord::Migration
  def up
    add_column :songs, :username, :string
  end

  def down
  end
end
