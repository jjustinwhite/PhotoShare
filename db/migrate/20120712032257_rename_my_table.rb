class RenameMyTable < ActiveRecord::Migration
  def self.up
    rename_table :groups, :albums
  end

  def self.down
    rename_table :albums, :groups
  end
end