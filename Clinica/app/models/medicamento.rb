class Medicamento < ActiveRecord::Base
  validates :nome_medicamento, presence: true
  has_many :receitas
  
  accepts_nested_attributes_for :receitas, :reject_if => :all_blank, :allow_destroy => true
end
