class Articulo < ApplicationRecord
  belongs_to :autor, optional:true #relación articulo a autor

  validates :titulo, presence: { :message => "No puede ser vacío"}
  validates :contenido, presence: { :message => "No puede ser vacío"},
  length: {minimum: 50, :message => "demasiado corto, por favor al menos 50 caracteres; es menos que en twitter ;-)"}

end
