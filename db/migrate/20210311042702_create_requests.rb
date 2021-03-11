class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
