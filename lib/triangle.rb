class Triangle

  attr_accessor :side1, :side2, :side3, :equilateral,
                :isosceles, :scalene

      def initialize(side1, side2, side3)
        @side1 = side1
        @side2 = side2
        @side3 = side3
      end

      def kind
        if side1 != side2 && side2 != side3
          begin
            raise TriangleError
          rescue TriangleError => error
            puts error.notice
          end #begin
        else
          side1 == side2 && side2 == side3
          return :equilateral
          # side1 == side2 || side2 == side3
          # return :isosceles
          # side1 != side2 && side2 != side3
          # return :scalene
        end #if statement
      end #kind method



end #Triangle class

class TriangleError < StandardError
  def notice
    "Method has failed to determine type of Triangle."
  end
end
