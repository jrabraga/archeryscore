class CreateTiros < ActiveRecord::Migration
  def change
    create_table :tiros do |t|
    	t.integer :serie_id
    end
  end
end
