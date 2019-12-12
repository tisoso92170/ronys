class AddAvatarToTiers < ActiveRecord::Migration[6.0]
  def change
    add_column :tiers, :avatar, :string
  end
end
