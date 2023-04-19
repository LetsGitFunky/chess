require_relative "slideable.rb"
require_relative "piece.rb"
# require_relative "board.rb"
class Rook < Piece
    include Slideable
    # symbol method? initialize? getter?
   
    private
    def move_dirs
        self.horizontal_dirs
    end
end

# a = Rook.new("white", b, [3,3])
# p a.move_dirs
