class Cartaz < ActiveRecord::Base
	belongs_to :usuario
  has_many :comentarios, dependent: :destroy
  has_attached_file :image, :styles => { :medium => "300x300>", :small => "200x200", :thumb => "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg"] }
  
  validates_presence_of :imagem
  validates_presence_of :titulo
  validates_presence_of :sinopse 
end
