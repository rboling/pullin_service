class CreateCarParts < ActiveRecord::Migration
  def change
    create_table :car_parts do |t|
      t.string :name

      t.timestamps
    end
  end
end
