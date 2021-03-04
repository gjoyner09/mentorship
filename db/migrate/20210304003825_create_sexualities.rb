class CreateSexualities < ActiveRecord::Migration[6.1]
  def change
    create_table :sexualities do |t|
      t.string :sexuality_name, null: false

      t.timestamps
    end
  end
end
