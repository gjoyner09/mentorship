class AddCreatedToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :created, :boolean, default: false
  end
end
