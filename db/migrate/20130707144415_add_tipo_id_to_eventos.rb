class AddTipoIdToEventos < ActiveRecord::Migration
  def up
    add_column :eventos, :tipo_id, :integer, :null => false
  end

  def down
    remove_column :eventos, :tipo_id
  end
end
