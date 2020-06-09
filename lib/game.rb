require_relative 'board'

class Fixme

end

class Game

	def initialize(board = Board.new)
		@board = board
		@over = false
	end

	def board
		@board
	end

	def over?
		@board.full?
	end

	def tie?
		@over
		self.over?
	end
end



# class Game
#   def initialize(board = Board.new)
#     @board = board
#   end

#   def board
#     @board
#   end

#   def over?
#     @board.full?
#   end

#   def tie?
#     self.over?
#   end

#   def winner
#     if @board.token_at(:top, :left) == :x && @board.token_at(:top, :middle) == :x && @board.token_at(:top, :right) == :x
#       return :x
#     elsif @board.token_at(:top, :left) == :o && @board.token_at(:top, :middle) == :o && @board.token_at(:top, :right) == :o
#       return :o
#     end
#     nil
#   end
