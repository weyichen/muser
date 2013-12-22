class AddUserToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :user, :string
  end
end
