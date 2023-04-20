require "singleton"
require_relative "piece.rb"

class Null < Piece
    include Singleton

    attr_reader :color, :symbol

    def initialize
        # super(color, board)
        @color = :Null
        @symbol = "🨠"
    end
    # symbol method? initialize? getter?

    def moves

    end
end
