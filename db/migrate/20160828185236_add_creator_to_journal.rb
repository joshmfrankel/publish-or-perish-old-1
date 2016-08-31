class AddCreatorToJournal < ActiveRecord::Migration
  def change
    add_reference :journals, :creator, references: :users, index: true
    add_foreign_key :journals, :users, column: :creator_id
  end
end
