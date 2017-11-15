class ImagensController < ApplicationController
  before_action :set_imagem, only: [:show, :edit, :update, :destroy]

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
        format.html { redirect_to @imagem, notice: 'Presente foi Criado.' }
        format.json { render :show, status: :created, location: @imagem }
      else
        format.html { render :new }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @imagem.update(imagem_params)
        format.html { redirect_to @imagem, notice: 'Presente foi Alterado.' }
        format.json { render :show, status: :ok, location: @imagem }
      else
        format.html { render :edit }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @imagem.destroy
    respond_to do |format|
      format.html { redirect_to imagens_url, notice: 'Presente foi Removido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagem
      @imagem = Imagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagem_params
      params.require(:imagem).permit(:presente, :url, :nome)
    end
end
