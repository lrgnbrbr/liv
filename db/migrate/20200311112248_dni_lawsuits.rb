class DniLawsuits < ActiveRecord::Migration[6.0]
  def change
    change_column :lawsuits, :number_dni, :string
  end
end
