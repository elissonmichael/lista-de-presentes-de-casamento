class ImagensController < ApplicationController
  before_action :set_imagem, only: [:show, :edit, :update, :destroy, :escolher]
  before_action :check_nome, only: [:escolher, :show]

  def escolher
    @imagem.update_attribute(:nome, params[:nome])
    redirect_to root_path(nome: params[:nome]),
    notice: 'Agradecemos a Sua Colaboração, Ela é Muito Importante para Nossa Vida de Casado que irá se Iniciar.'
  end

  def index
    @imagens = Imagem.all
  end

  def show
  end

  def new
    @imagem = Imagem.new
  end

  def edit
  end

  def create
    @imagem = Imagem.new(imagem_params)

    respond_to do |format|
      if @imagem.save
        redirect_to imagens_path, notice: 'Presente foi Criado.'
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @imagem.update(imagem_params)
        redirect_to imagens_path, notice: 'Presente foi Alterado.'
      else
        render :edits
      end
    end
  end

  def destroy
    @imagem.destroy
    redirect_to imagens_url, notice: 'Presente foi Removido.'
  end

  private
    def set_imagem
      @imagem = Imagem.find(params[:id])
    end

    def imagem_params
      params.require(:imagem).permit(:presente, :url, :nome)
    end
end
