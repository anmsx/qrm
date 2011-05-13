class User
  include Mongoid::Document
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable

  validates_presence_of :name, :message => 'Nome inválido'
  validates_presence_of :company, :message => 'Empresa inválida'
  validates_uniqueness_of :name, :message => 'Nome de empresa já está em uso'
  validates_uniqueness_of :email, :message => 'Email já está em uso'
  validates_presence_of :password, :message => 'Senha inválida'
  validates_confirmation_of :password, :message => 'Confirmação de senha incorreta'

  field :name
  field :company
  embeds_one :profile
  
end
