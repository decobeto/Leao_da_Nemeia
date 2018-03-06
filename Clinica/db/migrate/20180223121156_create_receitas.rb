class CreateReceitas < ActiveRecord::Migration
  def change
    create_table :receitas do |t|
      t.references :consulta, index: true, foreign_key: true
      t.references :medicamento, index: true, foreign_key: true
      t.string :complementos

      t.timestamps null: false
    end
  end
end
