class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_nome
    redirect_to nomes_path unless params[:nome].present?
  end
end
