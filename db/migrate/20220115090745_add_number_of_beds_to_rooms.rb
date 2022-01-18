class AddNumberOfBedsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :number_of_beds, :string
  end
end
