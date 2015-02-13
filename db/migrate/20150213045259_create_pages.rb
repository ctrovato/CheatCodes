class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
    	t.integer "subject_id"
    	t.string "name"
    	t.string "permalink"
    	t.integer "position"
    	t.boolean "visable", :default => false
    	t.timestamp
	  end
	  add_index("pages", "subject_id")
	  add_index("pages", "permalink")
  end

  def down
  	drop_table :pages
end

end