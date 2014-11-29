class Cartaz < ActiveRecord::Base
	belongs_to :usuario
  has_many :comentarios, dependent: :destroy
  
  validates_presence_of :imagem
  validates_presence_of :titulo
  validates_presence_of :sinopse 
end
