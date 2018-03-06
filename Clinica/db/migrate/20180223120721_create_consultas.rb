class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.references :paciente, index: true, foreign_key: true
      t.date :data
      t.text :descricao

      t.timestamps null: false
    end
  end
end
