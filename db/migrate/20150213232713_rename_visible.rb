class RenameVisible < ActiveRecord::Migration
  def change
  	rename_column :subjects, :visable, :visible
  end
end
