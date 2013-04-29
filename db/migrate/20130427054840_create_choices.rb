class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :title
      t.integer :child_id
      t.references :page
      t.timestamps
    end
  end
end
