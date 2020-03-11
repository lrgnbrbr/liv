class CreateAnnuaireCommissariats < ActiveRecord::Migration[6.0]
  def change
    create_table :annuaire_commissariats do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :phone
      t.string :Insee_number
      t.float :PGS_x_Geocode
      t.float :PGS_y_Geocode

      t.timestamps
    end
  end
end
