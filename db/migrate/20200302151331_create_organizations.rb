class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.integer :zip_code
      t.string :name
      t.string :address
      t.string :phon_number
      t.text :description

      t.timestamps
    end
  end
end
