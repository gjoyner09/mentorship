class AddRolesToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :sender_role, :string
    add_column :requests, :receiver_role, :string
  end
end
