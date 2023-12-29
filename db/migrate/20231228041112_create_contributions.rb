class CreateContributions < ActiveRecord::Migration[7.1]
  def change
    create_table :contributions do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :amount
      t.date :contribution_date
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
