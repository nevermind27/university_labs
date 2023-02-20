# frozen_string_literal: true

class Point
  attr_reader :fi, :r, :x, :y # точка в полярных координатах r=r(fi)

  # конструктор класса.
  def initialize(fi = 0, r = 0)
    @fi = fi # переменная объекта
    @r = r
  end

  def dekart_x
    @dekart_x ||= @r * Math.cos(@fi)
    # @dekart_x ||=@r * Math.cos(@fi)  #мемоизация
  end

  def dekart_y
    @r * Math.sin(@fi)
  end
end

class Okr < Point
  attr_reader :radius

  def initialize(fi = 0, r = 0, radius = 1)
    super(fi, r)
    @radius = radius
  end
end

