class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :title
      t.string :editor
      t.text :description
      t.integer :impact_factor
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
