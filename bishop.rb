require_relative "slideable.rb"
class Bishop < Piece
    include Slideable

    # symbol method? initialize? getter?

    private
    def move_dirs
        self.diagonal_dirs
    end
end
