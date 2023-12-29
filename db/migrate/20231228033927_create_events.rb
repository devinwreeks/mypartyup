class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.string :location
      t.integer :capacity
      t.decimal :budget
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
