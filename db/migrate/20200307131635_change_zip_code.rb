class ChangeZipCode < ActiveRecord::Migration[6.0]
  def change

    change_column :organizations, :zip_code, :string
  end
end
