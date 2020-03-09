class Lawsuit < ApplicationRecord
validates :first_name, presence: true
validates :last_name, presence: true
validates :zip_code, presence: true
validates :number_dni, presence: true
validates :violence_date, presence: true
validates :author_violence, presence: true
validates :lawsuit_type, presence: true
validates :declaration, presence: true

  serialize :violence_type
end
