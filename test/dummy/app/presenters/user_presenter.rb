class UserPresenter < Marilyne::Presenter

  def first_name
    @object.first_name
  end

  def last_name
    @object.last_name
  end
end
