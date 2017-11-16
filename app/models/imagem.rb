class Imagem < ApplicationRecord
  validates_presence_of :presente, :url
  default_scope { order('nome desc, id asc') }

  def button_class
    disponivel ? 'btn btn-outline-primary' : 'btn btn-outline-success'
  end

  def link_name
    disponivel ? 'Presentear' : 'Ver'
  end

  def disponibilidade
    disponivel ?  'Disponível' : "Escolhido por #{nome}"
  end

  def disponivel
    nome.blank?
  end

end
