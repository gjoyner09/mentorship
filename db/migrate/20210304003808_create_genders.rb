class CreateGenders < ActiveRecord::Migration[6.1]
  def change
    create_table :genders do |t|
      t.string :gender_name, null: false

      t.timestamps
    end
  end
end
