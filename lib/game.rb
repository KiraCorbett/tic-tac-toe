require_relative 'board'

class Fixme

end

class Game

	def initialize(my_board = "FAKE")
		@board = my_board
		@over = false
	end

	def board
		@board
	end

	def over?
		@over
	end
end
