class Consulta < ActiveRecord::Base
  belongs_to :paciente
  has_many :receitas, dependent: :destroy
  has_many :medicamentos, through: :receitas

  accepts_nested_attributes_for :receitas, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :medicamentos, :reject_if => :all_blank, :allow_destroy => true
end
