class CreateMedicamentos < ActiveRecord::Migration
  def change
    create_table :medicamentos do |t|
      t.string :nome_medicamento
      t.string :uso

      t.timestamps null: false
    end
  end
end
