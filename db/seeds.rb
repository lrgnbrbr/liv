require "csv"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "je supprime #{Organization.count} associations"
Organization.destroy_all

file_path = "#{Rails.root}/lib/csv_files/annuaire_associations.csv"
CSV.foreach(file_path, headers: :first_row) do |row|
  # puts row
  organization = Organization.new
  organization.name = row["Name"]
  organization.phon_number = row["Phone_number"]
  organization.address = row["Address"]
  organization.zip_code = row["Zip_code"]
  organization.city = row["City"].upcase.strip
  organization.description = row["Description"]
  # ...

  organization.save!
end

puts "Bravo : on a créé #{Organization.count} associations"

Pseudo.create(:login => 'Sarah',
            :password => '12345678'
            :password_confirmation => '12345678')
