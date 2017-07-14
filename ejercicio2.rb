module Formula
  def perimetro(lado1, lado2)
    puts "Perimetro #{lado1 * 2 + lado2 * 2}"
  end

  def area(lado1, lado2)
    puts "Area #{lado1 * lado2}"
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "Lado mide #{@largo} y #{@ancho}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "Lado mide #{@lado}"
  end
end


cuadrado = Cuadrado.new(5)
cuadrado.lados
cuadrado.perimetro(5, 5)
cuadrado.area(5, 5)
rectangulo = Rectangulo.new(5, 1)
rectangulo.lados
rectangulo.perimetro(5, 1)
rectangulo.area(5, 1)
