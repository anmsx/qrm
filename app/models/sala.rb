class Sala
  include Mongoid::Document

  validates_presence_of :nome, :message => 'Nome inválido'
  validates_uniqueness_of :nome, :message => 'Já existe uma sala cadastrada com esse nome'

  validates_numericality_of :capacidade, 
                            :only_integer => true,
                            :message => 'Valor inválido.'
  

  field :nome
  field :capacidade
  field :ar_condicionado
  field :internet
  field :localizacao

  field :horario_inicio
  field :horario_termino
  
end

