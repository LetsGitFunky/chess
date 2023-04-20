require_relative "slideable.rb"
require_relative "piece.rb"

class Bishop < Piece
    include Slideable

    def symbol
        "♗"
    end
    # symbol method? initialize? getter?

    private
    def move_dirs
        self.diagonal_dirs
    end
end
