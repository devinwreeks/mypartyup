class CreateVotes < ActiveRecord::Migration[7.1]
  def change
    create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.date :vote_date
      t.string :venue_preference
      t.string :activity_preference

      t.timestamps
    end
  end
end
