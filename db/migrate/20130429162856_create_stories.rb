class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string  :title
      t.integer :page_count
      t.timestamps
    end
  end
end
