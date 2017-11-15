module ApplicationHelper
  def bootstrap_class_for flash_type
      case flash_type
        when "success"
          "alert-success"
        when "error"
          "alert-danger"
        when "alert"
          "alert-warning"
        when "notice"
          "alert-info"
        else
          "alert-info"
      end
  end

  def sim_nao(bool)
    bool ? 'Sim' : 'Não'
  end
end
