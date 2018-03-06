class Paciente < ActiveRecord::Base
  validates :nome, :nome_mae, presence: true
  validates :cpf, length: { minimum: 11}
  validates :rg, length: { minimum: 9}


  has_many :consultas, dependent: :destroy
  accepts_nested_attributes_for :consultas, :reject_if => :all_blank, :allow_destroy => true

end
