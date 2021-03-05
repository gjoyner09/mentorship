class CreateIdentities < ActiveRecord::Migration[6.1]
  def change
    create_table :identities do |t|
      t.string :identity_name, null: false

      t.timestamps
    end
  end
end
