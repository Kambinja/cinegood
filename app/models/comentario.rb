class Comentario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :cartaz
  validates_presence_of :cartaz_id
  validates_presence_of :body
end
