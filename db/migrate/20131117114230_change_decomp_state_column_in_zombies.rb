class ChangeDecompStateColumnInZombies < ActiveRecord::Migration
  def change
  	change_column :zombies, :decomp_state, :string
  end
end
