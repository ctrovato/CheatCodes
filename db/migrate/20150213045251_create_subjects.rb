class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
    	t.string "name"
    	t.integer "position"
    	t.boolean "visable", :default => false
    	t.timestamps
    end
  end

  def down
  	drop_table :subjects
  end

end
