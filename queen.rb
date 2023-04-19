require_relative "slideable.rb"
class Queen < Piece
    include Slideable

    # symbol method? initialize? getter?
    def symbol
        "♕"
    end

    private
    def move_dirs
       queen_dirs = self.diagonal_dirs.concat(self.horizontal_dirs)
    end
end
