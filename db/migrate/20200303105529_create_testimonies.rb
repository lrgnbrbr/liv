class CreateTestimonies < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonies do |t|

      t.timestamps
    end
  end
end
