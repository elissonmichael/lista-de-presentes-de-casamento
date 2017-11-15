class WelcomeController < ApplicationController
  before_action :check_nome
  def index
    @imagens = Imagem.all
  end
end
