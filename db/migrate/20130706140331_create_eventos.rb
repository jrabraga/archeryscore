class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
    	t.string :nome
    	t.string :local
    	t.date :data

    	t.timestamps
    end
  end
end
