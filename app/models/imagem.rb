class Imagem < ApplicationRecord
  validates_presence_of :presente, :url
  default_scope { order('id DESC') }

end
