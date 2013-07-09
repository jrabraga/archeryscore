class AddPontuacaoToTiros < ActiveRecord::Migration
  def up
    add_column :tiros, :pontuacao, :integer, null: false
    add_column :tiros, :x, :boolean, default: false
  end

  def down
    remove_column :tiros, :pontuacao
    remove_column :tiros, :x
  end
end
