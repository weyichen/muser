class AddColumnsToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :ytEmbed, :string
    add_column :users, :favgenre, :string
    add_column :users, :favsong, :string
    add_column :users, :favartist, :string
    add_column :users, :favalbum, :string
    add_column :users, :favlyric, :string
    add_column :users, :favvideo, :string
    add_column :users, :favideoEmbed, :string
  end
end
