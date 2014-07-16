class CreateCondos < ActiveRecord::Migration
  def change
    create_table :condos do |t|
      t.string :codo_name
      t.string :address
      t.string :street
      t.string :district
      t.string :city
      t.string :country
      t.string :zip_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
