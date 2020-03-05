class ChangeTypeColumnsLawsuits < ActiveRecord::Migration[6.0]
  def change
  change_column :lawsuits, :violence_type, :string, array: true, default: []
  change_column :lawsuits, :lawsuit_type, :string

  end
end
