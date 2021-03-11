class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :mentor_id
      t.integer :mentee_id
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
