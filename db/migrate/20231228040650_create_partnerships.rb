class CreatePartnerships < ActiveRecord::Migration[7.1]
  def change
    create_table :partnerships do |t|
      t.string :name
      t.string :service_category
      t.string :phone
      t.decimal :discountRate
      t.text :contractDetails

      t.timestamps
    end
  end
end
