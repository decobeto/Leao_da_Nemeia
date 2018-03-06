class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :nome_mae
      t.string :nome_pai
      t.string :estado_civil
      t.string :nome_conjuge
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :uf

      t.timestamps null: false
    end
  end
end
