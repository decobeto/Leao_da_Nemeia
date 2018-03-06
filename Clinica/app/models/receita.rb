class Receita < ActiveRecord::Base
  belongs_to :consulta, dependent: :destroy
  belongs_to :medicamento, dependent: :destroy
end
