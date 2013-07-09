class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
    	t.integer :qtd_series
    	t.integer :flechas_por_serie
    	t.integer :distancia
    	t.integer :qtd_rounds, :limit => 2
    end
  end
end
