class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
    	t.string :nome
    	t.string :email
    	t.string :sexo, :size => 1
    	t.integer :categoria
    	t.string :clube
    	t.date :nascimento

    	t.timestamps
    end
  end
end
