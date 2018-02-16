class Triangle

  attr_accessor :side1, :side2, :side3, :equilateral,
                :isosceles, :scalene

      def initialize(side1, side2, side3)
        @side1 = side1
        @side2 = side2
        @side3 = side3
      end

      def kind
        begin
            if side1 == side2 && side2 == side3
              return :equilateral
        rescue
            elsif
              side1 == side2 || side2 == side3 || (side1 == side3)
              return :isosceles
            elsif
              side1 != side2 && side2 != side3
              return :scalene
            end #if statement
        end #begin
      end #kind method
end #Triangle class

class TriangleError < StandardError
  def notice
    "Method has failed to determine type of Triangle."
  end
end
