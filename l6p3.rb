# frozen_string_literal: true

class Integral
  def intprg(a, b, lambda = nil, &block)
    n = 10_000.0
    s = 0
    count = 0
    xn = a
    d = (b - a) / n
    block = lambda unless lambda.nil?
    loop do
      yn = block.call(xn)
      s += ((b - a) / n) * yn
      xn = ((xn + d) * n).round / n # чтобы не переполнялась разрядная сетка
      if xn == b
        s += ((b - a) / n) * yn
        break
      end
    end
    s.round(3)
  end
end
