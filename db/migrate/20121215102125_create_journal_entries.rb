class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.text :notes
      t.integer :rating
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
