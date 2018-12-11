module ApplicationHelper
  def tipo_em_texto(valor)
    return 'Apartamento' if valor == 0
    return 'Casa' if valor == 1
    'Hotel'
  end
end
