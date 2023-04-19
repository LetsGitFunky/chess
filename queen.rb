require_relative "slideable.rb"
class Queen < Piece
    include Slideable

    # symbol method? initialize? getter?

    private
    def move_dirs
        #diagonal_dirs + horizontal_dirs (from module Slideable)
    end
end
