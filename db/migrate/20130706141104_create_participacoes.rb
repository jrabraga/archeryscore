class CreateParticipacoes < ActiveRecord::Migration
  def change
    create_table :participacoes do |t|
    	t.integer :evento_id
    	t.integer :pessoa_id
    end
  end
end
