require_relative "stepable.rb"
require_relative "piece.rb"
class King < Piece
    include Stepable

    # symbol method? initialize? getter?
    def symbol
        "♔"
    end

    # private
    def move_diffs
        self.king_dirs
    end
end
