class ChangeTypeColumnsLawsuits < ActiveRecord::Migration[6.0]
  def change
  change_column :lawsuits, :violence_type, :string
  change_column :lawsuits, :lawsuit_type, :string

  end
end
