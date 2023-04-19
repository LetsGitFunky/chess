require_relative "stepable.rb"
class Knight < Piece
    include Stepable

    def symbol
        "♘"
    end

    # symbol method? initialize? getter?

    private
    def move_diffs
        self.knight_moves
    end
end
