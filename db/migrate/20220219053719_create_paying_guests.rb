class CreatePayingGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :paying_guests do |t|
      t.string :paying_guest
      t.text :address

      t.timestamps
    end
  end
end
