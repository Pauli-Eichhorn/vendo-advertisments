class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :street_name_and_number
      t.text :message
      t.string :postal_code
      t.string :city
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
