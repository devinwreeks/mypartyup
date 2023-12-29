class CreateEventPartnerships < ActiveRecord::Migration[7.1]
  def change
    create_table :event_partnerships do |t|
      t.references :event, null: false, foreign_key: true
      t.references :partnership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
