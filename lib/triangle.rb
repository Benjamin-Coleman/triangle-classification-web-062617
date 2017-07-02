require 'pry'

class Triangle

	attr_accessor :side_lengths, :side1, :side2, :side3

	def initialize(side1, side2, side3)
		@side1 = side1
		@side2 = side2
		@side3 = side3
		@side_lengths = [@side1, @side2, @side3].sort
	end


	def kind
		if (@side_lengths[0] + @side_lengths[1] <= @side_lengths[2]) || @side_lengths[0] <= 0
			begin
				raise TriangleError
			end
		elsif (@side_lengths[0] == @side_lengths[1] && @side_lengths[0] == @side_lengths[2])
			return :equilateral
		elsif (@side_lengths[1] == @side_lengths[2] )
			return :isosceles
		else
			return :scalene
		end
	end

end

class TriangleError < StandardError
	def message
		"Invalid triangle!"
	end
end

eq = Triangle.new(5,5,5)
sca = Triangle.new(3,10,5)