class AddCityToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :city, :string
  end
end
