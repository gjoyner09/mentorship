class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.text :reason_for_interest, null: false
      t.text :interests, null: false
      t.text :discussion_topics, null: false
      t.references :country, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.references :sexuality, null: false, foreign_key: true
      t.references :identity, null: false, foreign_key: true
      t.boolean :mentor, null: false, default: false
      t.boolean :mentee, null: false, default: false
      t.boolean :mentor_public, null: false, default: false
      t.boolean :mentee_public, null: false, default: false
      t.boolean :mentor_availability, null: false, default: false
      t.boolean :mentee_availability, null: false, default: false

      t.timestamps
    end
  end
end
