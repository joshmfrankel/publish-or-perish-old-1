class AddCreatorToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :creator_id, :integer
  end
end
