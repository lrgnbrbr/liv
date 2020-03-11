class ZipCodeLawsuits < ActiveRecord::Migration[6.0]
  def change
   change_column :lawsuits, :zip_code, :string

  end
end
