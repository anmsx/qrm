class Sala
  include Mongoid::Document

  validates_presence_of :nome, :message => 'Nome inválido'
  validates_uniqueness_of :nome, :message => 'Já existe uma sala cadastrada com esse nome'

  validates_numericality_of :capacidade, 
                            :only_integer => true,
                            :message => 'Valor inválido.'
  

  field :nome
  field :capacidade
  field :localizacao
  field :responsavel
  field :tema
  field :maiores_informacoes
  field :ar_condicionado
  field :internet
  field :energia_eletrica
  field :whiteboard
  field :ethernet
  field :projetor

  def qrm_details
    "http://qrm2.heroku.com/salas/#{id}/show_open"
  end

end

