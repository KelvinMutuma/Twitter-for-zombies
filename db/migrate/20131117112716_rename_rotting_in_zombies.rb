class RenameRottingInZombies < ActiveRecord::Migration
  def change
  	rename_column :zombies, :rotting, :decomp_state
  end
end
