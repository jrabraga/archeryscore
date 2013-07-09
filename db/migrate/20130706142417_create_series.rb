class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
    	t.integer :participacao_id
    end
  end
end
