class CreateLawsuits < ActiveRecord::Migration[6.0]
  def change
    create_table :lawsuits do |t|
      t.string :first_name
      t.string :last_name
      t.integer :zip_code
      t.integer :number_dni
      t.integer :violence_type
      t.date :violence_date
      t.string :author_violence
      t.integer :lawsuit_type
      t.text :declaration

      t.timestamps
    end
  end
end
