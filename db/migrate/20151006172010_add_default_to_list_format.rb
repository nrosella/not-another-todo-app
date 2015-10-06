class AddDefaultToListFormat < ActiveRecord::Migration
  def change
  	change_column :lists, :format, :integer, :default => 0
  end
end
